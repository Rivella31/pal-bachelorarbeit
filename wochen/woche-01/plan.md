# Week 01 — Plan  (12.10. – 18.10.2026)

> Based on the supervisor meeting of 08.10.2026 (`betreuer-notizen.md`).

## Goals
- **Understand completeness in "normal" logic** (supervisor's advice) using last year's script
  (Metcalfe, *Logic*, 2026) — same skeleton as book 7.2 without K_a.
- Read book **4.1–4.5** and **4.8.1** (supervisor's reading assignment).
- Thesis: start **Ch. 2.1 Languages of S5 and PA** (English).
- Literature base verified. Lean: CI green.

## Reading for Yiğit
1. Script (≈15 pp.): Ch. 3 intro + 3.2 (pp. 39, 45–46), 3.3 deduction theorem (46–48), 3.4 soundness & consistency (48–49),
   Ch. 4 intro (53), Lemma 4.1.3–4.1.4 (55–56), Thm 4.1.7 (56–57), Thm 4.2.1 (57–58), Thm 4.2.4–4.2.5 (60–61).
   Skip: 1.3, 2.4–2.5, quantifier/equality axioms, term-structure details, proof details of 4.2.2, Ch. 5–6.
2. Book 4.1–4.5 (pp. 67–84) and 4.8.1 (pp. 88–90).
3. Then 7.2 again (pp. 178–181), mapping each step to the script (see learning map, station P).

## Tasks
| Agent | Task | Output |
|---|---|---|
| autor | Ch. 2.1: L_K(A,P) and L_K[](A,P) as inductive definitions, abbreviations, subformulas, examples | `chapters/2-preliminaries.tex` §2.1 |
| literatur | Verify all `% UNVERIFIED` entries; add the course script as reference if it should be cited; search PAL formalisations | `references.bib`, `docs/literatur-notizen.md` |
| pruefer | Check §2.1 definitions | `pruefbericht.md` |
| lean-formalisierer | CI green; Lemma 7.22.3 (`c_neg`) | `lean/PAL/*.lean` |
| tutor | (1) Script completeness proof, (2) 7.2 as "script proof + K_a case", (3) questions on 4.1–4.5 | — |
| redaktion | Glossary `docs/glossar.md` (English terms from the book) | |
| gutachter | Questions for the next meeting (Q1, Q2, Q4, Q6, page count, deadline) | `fragen-an-betreuer.md` |

## Comprehension gate
Yiğit can:
1. Explain sound (⊢ φ ⇒ ⊨ φ) and complete (⊨ φ ⇒ ⊢ φ) and why completeness is the hard direction.
2. Prove on paper, following the script: Lemma 3.4.3, Lemma 4.1.4(b) (script exercise), maximality in Thm 4.2.1 (script exercise).
3. Reproduce the chain of the script's completeness proof (p. 53) and map each step to 7.2.
4. Explain what 7.2 adds: worlds = all MCSs, ~_a, Lemma 7.4.4–5, K_a case (witness world, like existential witnesses), canonicity.
5. Compute a public announcement on a two-world model and explain one reduction axiom semantically (book 4.4–4.5).

## Definition of done
- [ ] pruefbericht: no open ERRORs
- [ ] LaTeX compiles (CI green)
- [ ] Lean: CI green
- [ ] Quiz passed
- [ ] fragen-an-betreuer.md written
- [ ] AI-use log in zusammenfassung.md
