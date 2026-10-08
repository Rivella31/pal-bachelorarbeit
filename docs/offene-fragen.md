# Open questions & oddities in the book

## Q1 — "Necessitation of announcement" missing from Table 4.1 / 7.3
The text after Theorem 4.51 (p. 90) speaks of the soundness of the derivation rule
"necessitation of announcement" (from φ infer [ψ]φ, Ex. 4.52), but Table 4.1 (p. 89) and Table 7.3 (p. 187)
do not list this rule.
- Conjecture: the rule is **admissible** in PA, since soundness + completeness give:
  ⊢ φ ⇒ ⊨ φ ⇒ ⊨ [ψ]φ ⇒ ⊢ [ψ]φ. Then it need not be a rule of the system.
- But: Lemma 7.24 / Prop. 4.46.1 (substitution of equals) — is such a rule implicitly needed there?
  Wang & Cao (2013) discuss exactly such subtleties (to be verified by agent literatur).
- **For the supervisor:** which version of the system should the thesis be based on?

## Q2 — Comment after Def. 7.21 (p. 188)
"In the definition the number 4 appears in the clause for *action models*" — evidently the clause
for announcements c([φ]ψ) is meant. Probably a leftover from Section 7.6. For the thesis: justify
why 4 is the least suitable number (compute, in particular the composition case).

## Q3 — Scope
Prove S5ₙ completeness (Thm 7.7) or cite it? Scope of the Lean formalisation?

## Q4 — Form of the AI declaration (note of 08.10.2026)
AI use must be declared explicitly in the thesis, otherwise it counts as plagiarism.
Model: Cem prefaced his thesis with a separate page "Statement on the Use of AI Tools".
It names the tools used (Claude, Gemini, occasionally ChatGPT) and describes concretely per phase
what they were used for: research/understanding, software development (debugging, refactoring),
text revision and figures.
- Describe this thesis just as concretely per phase, but completely: here agents also draft
  proofs and chapter text. That must be stated, together with the kind of control
  (pruefer report, Lean verification, comprehension quiz).
- Implementation in `thesis/kapitel/anhang-ki.tex`; placement (appendix or front matter) to be clarified with the supervisor.
- Input: the AI-use log in each week's `zusammenfassung.md`.

## Q5 — Language of the thesis
As of 08.10.2026: the repo's process files are switched to English (decided, see
`docs/entscheidungen.md`). The language of the thesis itself is open: so far German is planned; Yiğit asks
the supervisor on 08.10.2026 whether English is wanted or permitted (book, literature and Lean code are English).
- **For the supervisor:** German or English?
- `autor` and `redaktion` now state the thesis language explicitly (German until Q5 is decided),
  so the text does not switch language unintentionally. The `tutor` stays in Turkish.
