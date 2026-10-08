/-
  PAL.Complexity — Lemma 7.22 (Exercise 7.23), Punkte 2–6:
  Die Reduktionsaxiome verringern die Komplexität c.
  Erste echte Beweise: Ziel von Woche 1–2.
-/
import PAL.Syntax

namespace PAL.Formula

variable {A : Type}

theorem c_pos : ∀ φ : Formula A, 0 < c φ
  | atom _   => by simp only [c]; omega
  | neg _    => by simp only [c]; omega
  | conj _ _ => by simp only [c]; omega
  | know _ _ => by simp only [c]; omega
  | ann _ ψ  => by
      have h := c_pos ψ
      simp only [c]
      exact Nat.mul_pos (by omega) h

-- Lemma 7.22.2:  c(φ → p) < c([φ]p)
theorem c_atomic (φ : Formula A) (p : Nat) :
    c (imp φ (atom p)) < c (ann φ (atom p)) := by
  have h := c_pos φ
  simp only [c, imp, Nat.mul_one]
  omega

-- Lemma 7.22.3 – 7.22.6: vom Formalisierer zu beweisen (Woche 2)
-- theorem c_neg  : c (imp φ (neg (ann φ ψ)))       < c (ann φ (neg ψ))
-- theorem c_conj : c (conj (ann φ ψ) (ann φ χ))    < c (ann φ (conj ψ χ))
-- theorem c_know : c (imp φ (know a (ann φ ψ)))    < c (ann φ (know a ψ))
-- theorem c_comp : c (ann (conj φ (ann φ ψ)) χ)    < c (ann φ (ann ψ χ))

end PAL.Formula
