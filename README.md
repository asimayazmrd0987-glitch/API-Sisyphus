# API-Sisyphus

A complete, single-file API testing tool that runs entirely in your browser. No backend, no build step, no dependencies beyond a couple of CDNs.

![Dark Theme](https://img.shields.io/badge/theme-dark-080C10?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)
![Vanilla JS](https://img.shields.io/badge/stack-vanilla%20JS-00D9FF?style=flat-square)

---

## What It Is

API-Sisyphus is a developer-first HTTP client built as a single HTML file. It gives you the core features of heavy tools like Postman or Insomnia without the bloat, accounts, or cloud dependencies. Everything stays in your browser — your data never leaves your machine.

## Features

| Feature | Detail |
|---------|--------|
| **7 HTTP Methods** | GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS |
| **Environment Variables** | `{{VARIABLE}}` substitution in URLs and headers, persisted to localStorage |
| **Auth Types** | None, Bearer Token, Basic Auth (auto base64), API Key (Header or Query Param) |
| **Request Body** | None, JSON (with pretty-print formatter), Form Data, Raw text |
| **Query Params** | Key-value pairs auto-appended to URL |
| **Custom Headers** | Unlimited key-value header pairs |
| **Response Viewer** | Syntax-highlighted JSON, headers table, raw text |
| **Response Meta** | Status badge (color-coded by range), elapsed time, response size |
| **Request History** | Last 60 requests persisted to localStorage with relative timestamps |
| **Keyboard Shortcut** | `Ctrl+Enter` to send (ignored when typing in textareas) |
| **Toast Notifications** | Copy success, format success, save confirmation, error alerts |

## Design

- **Dark terminal aesthetic** — background `#080C10`, cyan accent `#00D9FF`
- **JetBrains Mono** for all code and technical text
- **Inter** for body text
- Subtle grid overlay on the background
- Method colors: GET green, POST orange, PUT cyan, PATCH purple, DELETE red

## Quick Start

1. Open `index.html` in any modern browser
2. Enter a URL and hit **SEND** (or `Ctrl+Enter`)
3. Click **Try Example** to test with a live API instantly

## File Structure

```
API-Sisyphus/
└── index.html          # Everything is here — CSS, JS, markup
```

No `node_modules`. No `package.json`. No build step. Open the file and it works.

## Persistence

| Data | localStorage Key | Max |
|------|-----------------|-----|
| Environment Variables | `dojo_env` | Unlimited |
| Request History | `dojo_api_hist` | 60 entries |

## Browser Support

- Chrome / Edge / Firefox / Safari (latest)
- Requires `fetch()` API support
- Requires `localStorage` support

## Limitations

- **CORS**: Like all browser-based API testers, requests to APIs without `Access-Control-Allow-Origin` headers will be blocked by the browser. This is a security feature, not a bug. Test with CORS-enabled APIs, or add CORS headers to your own backend.
- No file upload support (multipart/form-data)
- No WebSocket testing

## License

MIT — use it, fork it, break it, fix it.
