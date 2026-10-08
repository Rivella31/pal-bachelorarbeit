/-
  PAL.Syntax — Sprache L_K[] (A, P) der Public Announcement Logic
  Quelle: van Ditmarsch, van der Hoek, Kooi (2008), Def. 4.x / Abschnitt 4.3

  Atome sind natürliche Zahlen (P = ℕ), Agenten ein beliebiger Typ `A`.
  Implikation, Disjunktion etc. sind – wie im Buch – Abkürzungen.
-/

namespace PAL

inductive Formula (A : Type) : Type where
  | atom : Nat → Formula A
  | neg  : Formula A → Formula A
  | conj : Formula A → Formula A → Formula A
  | know : A → Formula A → Formula A
  | ann  : Formula A → Formula A → Formula A   -- [φ]ψ
  deriving Repr, DecidableEq

namespace Formula

variable {A : Type}

/-- φ → ψ  :=  ¬(φ ∧ ¬ψ)   (wie im Buch, vgl. Hinweis zu Ex. 4.50) -/
def imp (φ ψ : Formula A) : Formula A := neg (conj φ (neg ψ))

/-- φ ∨ ψ  :=  ¬(¬φ ∧ ¬ψ) -/
def disj (φ ψ : Formula A) : Formula A := neg (conj (neg φ) (neg ψ))

/-- φ ↔ ψ  :=  (φ → ψ) ∧ (ψ → φ) -/
def iff (φ ψ : Formula A) : Formula A := conj (imp φ ψ) (imp ψ φ)

/-- ⊤ := ¬(p₀ ∧ ¬p₀) -/
def top : Formula A := imp (atom 0) (atom 0)

/-- Formeln ohne Ankündigungsoperator, d.h. Sprache L_K -/
def announcementFree : Formula A → Prop
  | atom _   => True
  | neg φ    => announcementFree φ
  | conj φ ψ => announcementFree φ ∧ announcementFree ψ
  | know _ φ => announcementFree φ
  | ann _ _  => False

/-- Komplexitätsmaß c aus Def. 7.21:  c([φ]ψ) = (4 + c(φ)) · c(ψ) -/
def c : Formula A → Nat
  | atom _   => 1
  | neg φ    => 1 + c φ
  | conj φ ψ => 1 + max (c φ) (c ψ)
  | know _ φ => 1 + c φ
  | ann φ ψ  => (4 + c φ) * c ψ

end Formula
end PAL
