---
description: Plan and start a new working week from the supervisor notes
argument-hint: <week number, e.g. 02>
---

Start week $ARGUMENTS.

1. If `wochen/woche-$ARGUMENTS/` does not exist: create it from `wochen/_vorlage/` and ask Yiğit to fill
   `betreuer-notizen.md` (bullet points are enough, Turkish/German/English all fine). Without notes: plan from
   `docs/zeitplan.md` and say so.
2. Read: supervisor notes, `docs/zeitplan.md`, `docs/offene-fragen.md`, `docs/verstaendnis.md`,
   the previous week's pruefbericht and quiz (carry over open findings and review items!).
   If the notes resolve an open question (e.g. Q1–Q5), record it in `docs/entscheidungen.md` and update `CLAUDE.md`/agents if needed
   (e.g. thesis language after Q5).
3. Write `wochen/woche-$ARGUMENTS/plan.md` following the template: goals, tasks per agent, reading for Yiğit
   (book pages), Lean goals, comprehension gate (which lemmas), definition of done.
4. Create branch `woche-$ARGUMENTS`.
5. Show Yiğit the plan briefly (5–10 lines, in Turkish) and ask whether to proceed.
6. After confirmation: autor + literatur (parallel) → pruefer → correction loop → lean-formalisierer → redaktion.
   Print one status line after each stage. Then point Yiğit to `/quiz`.
