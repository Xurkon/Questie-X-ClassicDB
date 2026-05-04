# Questie-X-ClassicDB

A [Questie-X](https://github.com/Xurkon/Questie-X) database plugin providing the full **Classic Era (1.14.x / Vanilla 1.12)** quest, NPC, object, and item database — including all Classic corrections and multi-language localization lookups.

---

## Requirements

- [Questie-X](https://github.com/Xurkon/Questie-X) must be installed. This plugin will not load without it.
- WoW client: Classic Era 1.14.x or Vanilla 1.12

---

## Installation

1. Download the latest release archive from the [Releases](https://github.com/Xurkon/Questie-X-ClassicDB/releases) page.
2. Extract the archive.
3. The extracted folder **must** be named `Questie-X-ClassicDB`.
4. Move it into your `Interface/AddOns/` directory alongside `Questie-X`:

```
Interface/AddOns/
├── Questie-X/               ← core addon (required)
└── Questie-X-ClassicDB/     ← this plugin
```

5. Reload your UI or restart the client.

> **Upgrading from an older Questie fork?** Delete your old `Questie` / `Questie-335` / `PE-Questie` folder from `Interface/AddOns/` and remove any `Questie*.lua` files from `WTF/Account/<name>/SavedVariables/` before installing. The old architecture is not compatible with Questie-X.

---

## What is Included

| Path | Contents |
|------|----------|
| `Database/Classic/classicQuestDB.lua` | Full Classic Era quest table |
| `Database/Classic/classicNpcDB.lua` | Full Classic Era NPC table with spawn data |
| `Database/Classic/classicObjectDB.lua` | Full Classic Era object table |
| `Database/Classic/classicItemDB.lua` | Full Classic Era item table |
| `Database/QuestXP/xpDB-classic.lua` | Quest XP reward data |
| `Database/Corrections/classicQuestFixes.lua` | Quest data corrections |
| `Database/Corrections/classicNPCFixes.lua` | NPC data corrections |
| `Database/Corrections/classicItemFixes.lua` | Item data corrections |
| `Database/Corrections/classicObjectFixes.lua` | Object data corrections |
| `Database/Corrections/Automatic/classicQuestReputationFixes.lua` | Auto-generated reputation fixes |
| `Database/Corrections/Automatic/itemStartFixes.lua` | Auto-generated item-start quest fixes |
| `Localization/lookups/Classic/` | Locale lookup tables for deDE, esES, esMX, frFR, koKR, ptBR, ruRU, zhCN, zhTW |
| `Loader.lua` | Plugin entry point — registers data via `QuestiePluginAPI` |

---

## How It Works

`Loader.lua` fires on `PLAYER_LOGIN` and registers the full Classic dataset with `QuestiePluginAPI`. Questie-X merges this data into its runtime database at init time, enabling full quest tracking, map pins, and tooltip support for all Classic Era content. The raw DB tables are loaded as plain globals by the TOC at addon load time — no string-loading or decompression is required.

---

## Contributing

Submit quest data corrections, NPC spawn fixes, or missing entries via pull request. See the existing files under `Database/Corrections/` for the expected table format.

---

## License

MIT License