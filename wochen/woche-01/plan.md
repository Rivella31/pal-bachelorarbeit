# Woche 01 — Plan  (12.10. – 18.10.2026)

> Erste Woche ohne Betreuer-Notizen: nach `docs/zeitplan.md` geplant.
> Nach dem ersten Betreuergespräch `betreuer-notizen.md` füllen und Plan ggf. mit `/neue-woche 01` anpassen.

## Ziele
- Fundament für Kapitel 2: Sprache L_K, Kripke-/S5-Modelle, Erfüllungsrelation, Gültigkeit.
- Yiğit versteht den Unterschied zwischen **⊨ (semantisch gültig)** und **⊢ (ableitbar)** — darum geht es in der ganzen Arbeit.
- Literaturbasis verifiziert.
- Lean: Gerüst (Syntax, Semantik) baut in CI.

## Lesestoff für Yiğit — bereits gelesen: 2.1–2.2, 7.1–7.2 (Stand 08.10.)
- Buch Kap. 2.1–2.2.2 (S. 11–25): Sprache, Semantik von S5. Beispiele mit Anne/Bill aktiv nachrechnen.
- Buch Kap. 4.1–4.2 (S. 67–72): nur zur Motivation, was am Ende kommt.

## Aufgaben
| Agent | Aufgabe | Ergebnis |
|---|---|---|
| autor | Kap. 2, Abschnitte: Sprache L_K (induktive Def.), Kripke-Modell, S5-Modell (Äquivalenzrelationen), Erfüllungsrelation, Gültigkeit, 2–3 Beispiele (Zwei-Welten-Modell p/¬p) | `kapitel/02-grundlagen.tex` §2.1–2.3 |
| literatur | Alle `% UNVERIFIZIERT`-Einträge prüfen und freischalten; Suche nach PAL-Formalisierungen in Proof-Assistenten | `literatur.bib`, `docs/literatur-notizen.md` |
| pruefer | Alle Definitionen von Kap. 2 auf Präzision und Vollständigkeit prüfen | `pruefbericht.md` |
| lean-formalisierer | CI grün machen (Syntax, Semantik, `c_pos`, `c_atomic`); Lemma 7.22.3 (`c_neg`) als erstes Ziel | `lean/PAL/*.lean` |
| redaktion | Glossar anlegen (`docs/glossar.md`) | |
| gutachter | Fragen fürs erste Betreuergespräch (siehe `docs/offene-fragen.md`, Q1–Q3) | `fragen-an-betreuer.md` |

## Verständnis-Tor
Yiğit kann:
1. Ein S5-Modell mit 2–3 Welten für zwei Agenten zeichnen und für 3 Formeln (z. B. K_a p, ¬K_b p, K_a ¬K_b p) die Wahrheit in einer Welt bestimmen.
2. In eigenen Worten erklären, was „korrekt“ (soundness: ⊢ φ ⇒ ⊨ φ) und „vollständig“ (completeness: ⊨ φ ⇒ ⊢ φ) bedeuten und warum Vollständigkeit die schwierige Richtung ist.
3. Erklären, warum die Axiome T, 4, 5 genau Reflexivität, Transitivität, Euklidizität entsprechen (Intuition).

## Definition of Done
- [ ] Prüfbericht: keine offenen FEHLER
- [ ] LaTeX kompiliert (CI grün)
- [ ] Lean: CI grün
- [ ] Quiz bestanden
- [ ] fragen-an-betreuer.md erstellt
