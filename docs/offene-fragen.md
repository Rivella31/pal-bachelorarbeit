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

## Q3 — Scope ✅ answered 08.10.2026
The agreed structure has its own chapter "Soundness and completeness for S5 (Section 7.2)" → **S5ₙ completeness is proved in the thesis.**
Scope is PA without common knowledge (7.4); PAC only as outlook in the conclusion.
Lean scope → see Q6.

## Q4 — Form of the AI declaration (note of 08.10.2026)
AI use must be declared explicitly in the thesis, otherwise it counts as plagiarism.
Model: Cem prefaced his thesis with a separate page "Statement on the Use of AI Tools".
It names the tools used (Claude, Gemini, occasionally ChatGPT) and describes concretely per phase
what they were used for: research/understanding, software development (debugging, refactoring),
text revision and figures.
- Describe this thesis just as concretely per phase, but completely: here agents also draft
  proofs and chapter text. That must be stated, together with the kind of control
  (pruefer report, Lean verification, comprehension quiz).
- Implementation in `thesis/chapters/appendix-ai.tex`; placement (appendix or front matter) to be clarified with the supervisor.
- Input: the AI-use log in each week's `zusammenfassung.md`.

## Q5 — Language of the thesis ✅ answered 08.10.2026: **English**
Supervisor decided English. `autor`, `redaktion`, `CLAUDE.md` and the LaTeX preamble have been switched.
The `tutor` keeps talking to Yiğit in Turkish (technical terms in English).

## Q6 — Role of the Lean formalisation
The agreed structure (Introduction, Preliminaries, S5, PA, Conclusion) has no Lean chapter.
- **For the supervisor:** may the Lean formalisation be mentioned (e.g. a remark per verified lemma, or an appendix),
  or should it stay an internal checking tool only?
- Until answered: Lean remains an internal check; nothing about it goes into the main chapters.
