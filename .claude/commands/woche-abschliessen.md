---
description: Check and close the current week, generate questions for the supervisor meeting
---

1. Check the definition of done in the current week's `plan.md`: pruefbericht without open ERRORs,
   `lake build` green (where Lean goals exist), LaTeX compiles, quiz passed.
   If anything is not met: say exactly what and stop (no closing).
2. Agent `gutachter`: write `fragen-an-betreuer.md`, set the traffic light in `docs/zeitplan.md`.
3. Write the week's `zusammenfassung.md` (max. 10 lines: achieved / open / decisions)
   plus an **AI-use log** section: which agent drafted or checked what (input for `appendix-ai.tex`).
4. Commit, merge `woche-XX` → `main`, push.
5. Show Yiğit the questions for the supervisor meeting.
