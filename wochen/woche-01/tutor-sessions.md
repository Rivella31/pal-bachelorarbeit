# Tutor sessions — week 01

## Session 1 — 08.10.2026, 18:50–19:50 (completeness in "normal" logic, without the script)

Format: Socratic, small steps, Yiğit answers each step himself. Mid-session he felt overwhelmed by the long FOL proofs
in the script; clarified that those (Henkin witnesses, term structures, substitution) are not needed for the thesis.
Continued with short, guided steps — went well.

| # | Topic | Script | Book | Result |
|---|---|---|---|---|
| 1 | Inconsistency of {p, p→q, ¬q} | def. p. 48 | — | ✅ correct; reminded that line justifications are mandatory |
| 2 | Inconsistent set derives everything (derive r) | Lemma 3.4.2 | — | ✅ with scaffold (fill-in derivation) |
| 3 | Σ ⊢ φ ⇒ Σ ∪ {¬φ} inconsistent | Lemma 3.4.3 (⇒) | step 1 of Thm 7.7 | ✅ (monotonicity added) |
| 4 | Σ ∪ {¬φ} inconsistent ⇒ Σ ⊢ φ | Lemma 3.4.3 (⇐) | step 1 of Thm 7.7 | ✅ after splitting into (a)–(c); deduction theorem introduced |
| 5 | MCS cannot contain φ and ¬φ | def. MCS | 7.1 | ✅ |
| 6 | Γ ⊢ φ ⇒ Γ ∪ {φ} derives nothing new | (cut) | — | ✅ **own proof** via deduction theorem + MP |
| 7 | MCS is deductively closed | Lemma 4.1.3 | **Lemma 7.4.1** | ✅ (one transfer step needed prompting) |
| 8 | φ ∉ Γ ⇒ ¬φ ∈ Γ | Lemma 4.1.4(a) | **Lemma 7.4.2** | ✅ full chain by himself |
| 9 | Run Lindenbaum by hand | Thm 4.2.1 | Lemma 7.3 | ✅ |
| 10 | Why is the union consistent? | Lemma 3.2.2 | Lemma 7.3 | ❌ first ("derivations are infinite") → ✅ after git-commit analogy; **review: finiteness of derivations** |
| 11 | Maximality of the union | Thm 4.2.1 (exercise) | Lemma 7.3 | ✅ |
| 12 | Truth lemma, base case | Thm 4.1.7 | Lemma 7.5 | ✅ linked it himself to V^c in the canonical model |
| 13 | Truth lemma, ¬ case | Thm 4.1.7 | Lemma 7.5 | ⏸ links 1–2 done with help; stopped — **concept of the induction hypothesis not yet clear** |

Session ended ~19:58 because Yiğit was tired (after ~70 min); good point to stop.

Review items for next session:
- **Structural induction and the induction hypothesis** (start here, with the ¬¬p example and the recursion analogy), then finish the ¬ case (last link = Lemma 4.1.4(a)) and the ∧ case.
- Finiteness of derivations and why the Lindenbaum union is consistent — have him explain it once more unaided.
- Always give line justifications in derivations.
- Notation: ψ (psi) vs θ (theta).

Next: truth lemma (¬ and ∧ cases, script Thm 4.1.7), the completeness chain (script p. 53), then 7.2 = "this + K_a".
