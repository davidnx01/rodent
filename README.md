# RO-DENT s.r.o. — redesign webu

Statický web zubnej ambulancie RO-DENT s.r.o. (Hodská 97, Galanta).
Bez build-kroku a bez závislostí — čistý HTML + CSS + minimum vanilla JS.

## Spustenie

Stačí otvoriť `index.html` v prehliadači. Pre lokálny server (správne cesty, Google mapa):

```bash
./start.sh          # http://localhost:5173
# alebo
npm start
```

## Štruktúra

```
rodent/
├── index.html              # homepage
├── assets/
│   ├── css/style.css       # celý štýl (tokeny → základ → sekcie → responzívne)
│   └── img/                # fotky z pôvodného webu (1200 px) + favicon
├── robots.txt
├── start.sh
└── package.json
```

## Dizajn (verzia 3, 28. 9. 2026)

Svetlé „bento“ rozloženie: zaoblené panely, plávajúca hlavička v tvare kapsuly, plávajúce karty na fotke, jemné farebné prechody.

| Rola | Token | Hodnota |
|---|---|---|
| zem | `--bg` / `--card` | `#f3f8fc` / `#ffffff` |
| akcent | `--blue` / `--blue-deep` | `#0b7fc1` / `#08639a` (modrá z loga) |
| hlbina | `--navy` | `#0d2233` |
| odlesk | `--aqua` | `#7fd6e6` |
| jemné podklady | `--tint` / `--tint-2` | `#e6f2fa` / `#d3e9f7` |

Písma (Google Fonts): **Bricolage Grotesque** (nadpisy, čísla) + **Hanken Grotesk** (text).

Sekcie: hero panel s fotkou a plávajúcimi kartami (živý stav, 3D CBCT) → pruh s číslami → služby ako bento dlaždice (modrá, tmavá, ľadová) →
prečo RO-DENT (4 karty + záruka) → tmavý panel „Vybavenie“ → tím → cenník s cenami v pilulkách → galéria → kontakt (ordinačné hodiny s dneškom, mapa) → modrá výzva → pätička.
Sekcia Kontakt ostala vizuálne z verzie 2. Hover je jediný pohyb; `prefers-reduced-motion` ho vypína. Na mobile je dole pripnutý pás „Zavolať“.

Breakpointy: `1080px` (hamburger, 2 stĺpce), `900px` (jeden stĺpec), `640px` (mobil).

## Čo ešte treba doplniť pred nasadením

- [ ] originál loga vo vektore (teraz je znak zubu prekreslený ako SVG v `index.html` a `favicon.svg`)
- [ ] fotky personálu (teraz len mená a funkcie)
- [ ] nové, jasnejšie fotky ambulancie (súčasné sú staršie, širokouhlé)
- [ ] GA4 merací kód (pôvodný web mal zastarané Universal Analytics `UA-111673393-1`)
- [ ] podstránky: `sluzby.html`, `cennik.html`, `kontakt.html`, `personal.html`, `galeria.html`
- [ ] `og:image` – finálna verzia obrázka pre sociálne siete (1200×630)

## Zdroje obsahu

Texty, cenník a fotky pochádzajú z pôvodného webu `www.rodent.sk` (cenník platný od 1. 7. 2026).
Predchádzajúca verzia dizajnu je uložená v `_povodny-navrh/` (mimo gitu).
