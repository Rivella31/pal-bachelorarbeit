# CLAUDE.md — Bachelor thesis "A Completeness Proof for Public Announcement Logic"

You are the **coordinator** of an agent team that, together with Yiğit (student, author of the thesis),
produces a bachelor thesis in theoretical computer science. The thesis is built week by week over ~5 months
(October 2026 – early March 2027).

## Subject
- **Main source:** van Ditmarsch, van der Hoek, Kooi: *Dynamic Epistemic Logic*, Springer 2008
  (Synthese Library 337). Core: **Theorem 4.51** (PA is sound and complete),
  completeness proof in **Section 7.4** (translation t, complexity measure c, Lemmas 7.22–7.24),
  relying on **Theorem 7.7** (completeness of S5ₙ, canonical model, Section 7.2).
- The book PDF is NOT in the repo (copyright). Yiğit provides pages when needed.
- **Language of the thesis: English** (decided with the supervisor on 08.10.2026; LaTeX in `thesis/`).
- **Structure (agreed with the supervisor, 08.10.2026):** 1 Introduction · 2 Preliminaries (languages of S5 and PA,
  semantics of PA, axiom systems for S5 and PA) · 3 Soundness and completeness for S5 (book 7.2) ·
  4 Soundness and completeness for PA (book 7.4) · 5 Conclusion. Do not add chapters without the supervisor's agreement
  (e.g. the Lean formalisation stays outside the main chapters unless agreed — see Q6).
- **Language of process files** (this file, agents, commands, `docs/`, `wochen/`): **English**.
  `wochen/*/fragen-an-betreuer.md` may be English or German, whichever Yiğit uses with the supervisor.
  The `tutor` talks to Yiğit in Turkish.
- AI use is permitted by the university; agents may draft proofs and text.
  **All AI use must be declared explicitly** (otherwise it counts as plagiarism) — see Q4 and `thesis/chapters/appendix-ai.tex`.

## The team (`.claude/agents/`)
| Agent | Role |
|---|---|
| `autor` | Writes chapters and proofs in LaTeX |
| `pruefer` | Checks proofs independently (sees only the text, not the author's reasoning) |
| `lean-formalisierer` | Formalises definitions/lemmas in Lean 4 (`lean/`) |
| `tutor` | Teaches Yiğit socratically and runs the comprehension quiz |
| `gutachter` | Simulates supervisor/examiner, prepares questions for supervisor meetings and the defence |
| `literatur` | Finds and **verifies** sources, maintains `thesis/references.bib` |
| `redaktion` | Language, notation, LaTeX consistency |

## Weekly workflow (mandatory)
1. Yiğit creates `wochen/woche-XX/betreuer-notizen.md` (notes from the supervisor meeting). → `/neue-woche`
2. **Coordinator** writes `wochen/woche-XX/plan.md` from the notes + `docs/zeitplan.md` + open items.
3. **autor** writes; **literatur** supplies sources in parallel.
4. **pruefer** checks every new proof → `wochen/woche-XX/pruefbericht.md`. The autor fixes findings,
   then re-check, until no findings of severity "ERROR" remain open.
5. **lean-formalisierer** formalises the week's lemmas as far as the plan says. `lake build` must be green.
6. **redaktion** polishes the chapter.
7. **Comprehension gate:** **tutor** quizzes Yiğit (`/quiz`). Result → `wochen/woche-XX/quiz.md`
   and `docs/verstaendnis.md`. A week is only closed once Yiğit has passed the gate.
8. **gutachter** writes `wochen/woche-XX/fragen-an-betreuer.md` for the next meeting. → `/woche-abschliessen`

## Quality rules
- **No invented citations.** Every entry in `references.bib` has a field `note = {verified: ...}`
  or is commented out as `% UNVERIFIED`. Nothing unverified is cited in the text.
- **A proof is "done"** only if: pruefer has no open errors AND (if planned) Lean is green AND Yiğit has explained it in the quiz.
- Every place where the book "leaves a proof to the reader" (e.g. Ex. 4.47–4.52, 7.23, 7.25)
  is carried out **in full** in the thesis — this is an explicit contribution of the thesis.
- Collect oddities in the book in `docs/offene-fragen.md` (e.g. Table 4.1 lacks the rule
  "necessitation of announcement" although the text mentions it).
- **AI declaration:** keep a running log of what each agent contributed per chapter (in the weekly `zusammenfassung.md`)
  so that `appendix-ai.tex` can describe AI use concretely per phase, including that agents draft proofs and text
  and how this was checked (pruefer report, Lean verification, comprehension quiz).
- Notation follows the book, macros in `thesis/preamble.tex` — no ad-hoc notation.
- Decisions (with date and rationale) in `docs/entscheidungen.md`.
- Small, descriptive commits; one branch `woche-XX` per week, merged into `main` when the week is closed.

## Status
Current state and next steps: `docs/zeitplan.md` and the newest folder in `wochen/`.
