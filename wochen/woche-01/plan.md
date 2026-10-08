# Week 01 — Plan  (12.10. – 18.10.2026)

> Planned from `docs/zeitplan.md` before the supervisor meeting of 08.10.2026.
> After the meeting: fill `betreuer-notizen.md` and adjust the plan with `/neue-woche 01`.

## Goals
- Foundation for chapter 2: language L_K, Kripke/S5 models, satisfaction relation, validity.
- Yiğit understands the difference between **⊨ (semantically valid)** and **⊢ (derivable)** — the whole thesis is about this.
- **Supervisor (08.10.): understand completeness for propositional logic first** — same skeleton as 7.2 without K_a
  (Hilbert calculus, deduction theorem, MCS, Lindenbaum, truth lemma). Source: last year's course script (Yiğit provides).
- Then close the gap in 7.2 by comparing it step by step with the propositional proof.
- Literature base verified.
- Lean: scaffold (syntax, semantics) builds in CI.

## Reading for Yiğit — already read: 2.1–2.2, 7.1–7.2 (as of 08.10.)
- Re-read 7.2 (pp. 178–181) after the tutor session, pen in hand: Lemma 7.4 items 4–5 and the K_a case of Lemma 7.5.
- Book 4.1–4.2 (pp. 67–72): motivation only, what comes at the end.

## Tasks
| Agent | Task | Output |
|---|---|---|
| autor | Ch. 2: language L_K (inductive def.), Kripke model, S5 model (equivalence relations), satisfaction, validity, 2–3 examples (two-world model p/¬p) | `kapitel/02-grundlagen.tex` §2.1–2.3 |
| literatur | Check and enable all `% UNVERIFIED` entries; search for PAL formalisations in proof assistants | `literatur.bib`, `docs/literatur-notizen.md` |
| pruefer | Check all definitions of ch. 2 for precision and completeness | `pruefbericht.md` |
| lean-formalisierer | CI green (syntax, semantics, `c_pos`, `c_atomic`); Lemma 7.22.3 (`c_neg`) as first goal | `lean/PAL/*.lean` |
| tutor | Sessions: (1) propositional completeness from the course script, (2) 7.2 as "propositional proof + K_a case" | — |
| redaktion | Create glossary (`docs/glossar.md`) | |
| gutachter | Questions for the first supervisor meeting (see `docs/offene-fragen.md`, Q1–Q5) | `fragen-an-betreuer.md` |

## Comprehension gate
Yiğit can:
1. Draw an S5 model with 2–3 worlds for two agents and determine the truth of 3 formulas (e.g. K_a p, ¬K_b p, K_a ¬K_b p) at a world.
2. Explain in his own words what "sound" (⊢ φ ⇒ ⊨ φ) and "complete" (⊨ φ ⇒ ⊢ φ) mean and why completeness is the hard direction.
3. Explain why the axioms T, 4, 5 correspond to reflexivity, transitivity, euclideanness (intuition).
4. Prove completeness of propositional logic on paper (MCS → Lindenbaum → valuation → truth lemma → contraposition).
5. List exactly what 7.2 adds to the propositional proof (worlds = MCSs, ~_a, Lemma 7.4.4–5, K_a case, canonicity).

## Definition of done
- [ ] pruefbericht: no open ERRORs
- [ ] LaTeX compiles (CI green)
- [ ] Lean: CI green
- [ ] Quiz passed
- [ ] fragen-an-betreuer.md written
- [ ] AI-use log in zusammenfassung.md
