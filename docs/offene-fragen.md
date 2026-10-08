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
