# Bachelorarbeit: Vollständigkeitsbeweis für die Public Announcement Logic

Grundlage: van Ditmarsch, van der Hoek, Kooi — *Dynamic Epistemic Logic* (Springer 2008), Theorem 4.51 / Abschnitt 7.4.

## Nasıl çalışır (kısa)
Her hafta:
1. Danışman görüşmesinden sonra `wochen/woche-XX/betreuer-notizen.md`'yi doldur (madde madde yeter).
2. Claude Code'u bu repoda aç → `/neue-woche XX` → plan çıkar, onaylarsın, agent'lar çalışır
   (autor → pruefer → düzeltme → lean-formalisierer → redaktion).
3. Kendin oku: `plan.md`'deki kitap sayfaları + yeni yazılan bölüm.
4. `/quiz` → tutor seni sınar. Geçmeden hafta kapanmaz.
5. `/woche-abschliessen` → danışmana sorular hazırlanır, `main`'e merge.
6. Savunmadan önce: `/kolloquium`.

## Yapı
| Yol | İçerik |
|---|---|
| `CLAUDE.md` | Koordinatör talimatları, kalite kuralları |
| `.claude/agents/` | autor, pruefer, lean-formalisierer, tutor, gutachter, literatur, redaktion |
| `.claude/commands/` | `/neue-woche`, `/quiz`, `/woche-abschliessen`, `/kolloquium` |
| `thesis/` | LaTeX (İngilizce), `preamble.tex` notasyon makroları, `chapters/` |
| `lean/` | Lean 4 formalizasyonu (`PAL`) |
| `wochen/` | Haftalık plan, raporlar, quiz protokolleri |
| `docs/` | Zaman planı, açık sorular, kararlar, anlama takibi |

CI (GitHub Actions) her push'ta tezi PDF olarak derler (Artifact: `arbeit-pdf`) ve Lean'i build eder.
Kitabın PDF'i telif nedeniyle repoya **konmaz**.
