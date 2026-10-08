/-
  PAL.Semantics — Kripke-Semantik für L_K[] (Abschnitt 4.4)

  Statt das Modell bei einer Ankündigung explizit zu M|φ zu verkleinern,
  tragen wir eine Domänen-Einschränkung `D : W → Prop` mit. Das vermeidet
  wechselseitige Rekursion zwischen Erfüllungsrelation und Modellrestriktion
  und ist strukturell rekursiv in der Formel.

  TODO (Formalisierer): Lemma, dass `sat M D w φ` genau der Buchsemantik
  M|D, w ⊨ φ entspricht (für w mit D w).
-/
import PAL.Syntax

namespace PAL

structure Model (A : Type) where
  W   : Type
  rel : A → W → W → Prop
  val : Nat → W → Prop

/-- S5-Modell: jede Zugänglichkeitsrelation ist eine Äquivalenzrelation -/
def Model.isS5 {A : Type} (M : Model A) : Prop :=
  ∀ a, Equivalence (M.rel a)

open Formula

/-- M, D, w ⊨ φ  (D = noch „lebende“ Welten) -/
def sat {A : Type} (M : Model A) : (M.W → Prop) → M.W → Formula A → Prop
  | _, w, atom p   => M.val p w
  | D, w, neg φ    => ¬ sat M D w φ
  | D, w, conj φ ψ => sat M D w φ ∧ sat M D w ψ
  | D, w, know a φ => ∀ v, D v → M.rel a w v → sat M D v φ
  | D, w, ann φ ψ  => sat M D w φ → sat M (fun v => D v ∧ sat M D v φ) w ψ

/-- Gültigkeit über allen S5-Modellen:  ⊨ φ -/
def valid {A : Type} (φ : Formula A) : Prop :=
  ∀ (M : Model A), M.isS5 → ∀ w, sat M (fun _ => True) w φ

end PAL
