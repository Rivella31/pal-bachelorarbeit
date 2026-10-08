---
description: Neue Arbeitswoche aus den Betreuer-Notizen planen und starten
argument-hint: <Wochennummer, z.B. 02>
---

Starte Woche $ARGUMENTS.

1. Falls `wochen/woche-$ARGUMENTS/` nicht existiert: aus `wochen/_vorlage/` anlegen und Yiğit bitten,
   `betreuer-notizen.md` zu füllen (Stichworte reichen). Ohne Notizen: nach `docs/zeitplan.md` planen und das sagen.
2. Lies: Betreuer-Notizen, `docs/zeitplan.md`, `docs/offene-fragen.md`, `docs/verstaendnis.md`,
   Prüfbericht und Quiz der Vorwoche (offene Befunde und Wiederholungspunkte übernehmen!).
3. Schreibe `wochen/woche-$ARGUMENTS/plan.md` nach Vorlage: Ziele, Aufgaben je Agent, Lesestoff für Yiğit
   (Buchseiten), Lean-Ziele, Verständnis-Tor (welche Lemmata), Definition of Done.
4. Lege Branch `woche-$ARGUMENTS` an.
5. Zeige Yiğit den Plan kurz (5–10 Zeilen) und frage, ob losgelegt werden soll.
6. Nach Bestätigung: autor + literatur (parallel) → pruefer → Korrekturschleife → lean-formalisierer → redaktion.
   Gib nach jeder Stufe eine Statuszeile aus. Danach Yiğit auf `/quiz` hinweisen.
