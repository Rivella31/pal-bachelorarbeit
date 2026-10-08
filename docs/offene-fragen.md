# Offene Fragen & Auffälligkeiten im Buch

## Q1 — „Necessitation of announcement“ fehlt in Tabelle 4.1 / 7.3
Der Text nach Theorem 4.51 (S. 90) spricht von der Korrektheit der Ableitungsregel
„necessitation of announcement“ (aus φ folgt [ψ]φ, Ex. 4.52), aber Tabelle 4.1 (S. 89) und Tabelle 7.3 (S. 187)
listen diese Regel nicht.
- Vermutung: Die Regel ist in PA **zulässig** (admissible), weil aus Korrektheit + Vollständigkeit folgt:
  ⊢ φ ⇒ ⊨ φ ⇒ ⊨ [ψ]φ ⇒ ⊢ [ψ]φ. Dann muss sie nicht als Regel im System stehen.
- Aber: Lemma 7.24 / Prop. 4.46.1 (substitution of equals) — wird dort implizit eine solche Regel gebraucht?
  Wang & Cao (2013) diskutieren genau solche Feinheiten (zu verifizieren, Agent literatur).
- **An Betreuer:** Welche Fassung des Systems soll die Arbeit zugrunde legen?

## Q2 — Kommentar zu Def. 7.21 (S. 188)
„In der Definition erscheint die Zahl 4 in der Klausel für *action models*“ — gemeint ist offenbar die Klausel
für Ankündigungen c([φ]ψ). Vermutlich Überbleibsel aus Abschnitt 7.6. Für die Arbeit: Begründen,
warum 4 die kleinste geeignete Zahl ist (rechnen, insb. Fall Komposition).

## Q3 — Umfang
S5ₙ-Vollständigkeit (Thm 7.7) selbst beweisen oder zitieren? Umfang der Lean-Formalisierung?

## Q4 — Form der KI-Erklärung (Hinweis vom 08.10.2026)
Die KI-Nutzung muss in der Arbeit ausdrücklich deklariert werden, sonst gilt sie als Plagiat.
Vorbild: Cem hat seiner Arbeit eine eigene Seite „Statement on the Use of AI Tools“ vorangestellt.
Sie nennt die verwendeten Werkzeuge (Claude, Gemini, gelegentlich ChatGPT) und beschreibt je Phase
konkret, wofür sie eingesetzt wurden: Recherche/Verständnis, Softwareentwicklung (Debugging, Refactoring),
Textüberarbeitung und Abbildungen.
- Für diese Arbeit genauso konkret pro Phase beschreiben, aber vollständig: Hier entwerfen Agents auch
  Beweise und Kapiteltext. Das muss in der Erklärung stehen, zusammen mit der Art der Kontrolle
  (Prüfbericht des pruefer, Lean-Verifikation, Verständnis-Quiz).
- Umsetzung in `thesis/kapitel/anhang-ki.tex`; Platzierung (Anhang oder vorne) mit Betreuer klären.

## Q5 — Sprache der Arbeit
Yiğit hält Englisch für besser (08.10.2026): Buch, Literatur und Lean-Code sind englisch,
die Fachterminologie müsste sonst übersetzt werden. Die bisherige Entscheidung „Deutsch“ beruht auf der
Annahme einer Hochschulvorgabe.
- **An Betreuer:** Ist eine englische Bachelorarbeit zulässig?
- Unabhängig davon: Prozessdateien (`CLAUDE.md`, `.claude/agents/`, `.claude/commands/`) auf Englisch umstellen.
  Dabei in `autor` und `redaktion` die Sprache der Arbeit ausdrücklich festlegen, damit der Text nicht
  unbeabsichtigt die Sprache wechselt. Der `tutor` bleibt auf Türkisch.
