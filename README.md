<div align="center">

# 🪨 API Sisyphus

### The Zero-Install, Single-File API Testing Tool

[![Live Demo](https://img.shields.io/badge/Live_Demo-Vercel-000000?style=for-the-badge&logo=vercel)](https://api-sisyphus.vercel.app/)
[![Sponsor](https://img.shields.io/badge/Sponsor-Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/YOUR_USERNAME_HERE)
[![GitHub Repo stars](https://img.shields.io/github/stars/asimayazmrd0987-glitch/API-Sisyphus?style=for-the-badge&color=blue)](https://github.com/asimayazmrd0987-glitch/API-Sisyphus/stargazers)

*Named after the Greek mythological figure condemned to roll a boulder up a hill for eternity—because testing APIs sometimes feels exactly like that.*

</div>

---

## 🌟 Why API Sisyphus?

Heavy API clients like Postman or Insomnia are great, but they require Electron installations, consume massive amounts of RAM, and slow down your workflow when you just need to test a quick JSON endpoint. 

**API Sisyphus** is a lightweight, browser-based alternative built entirely in a single `index.html` file with Vanilla JavaScript. It leverages the browser's native `fetch()` API and `localStorage` to provide a blazing-fast, zero-setup testing environment.

### ✨ Core Features
- **⚡ Zero Setup:** No npm, no Electron, no installations. Just open the browser.
- **🔄 Full HTTP Support:** GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS.
- **🧠 Smart State Memory:** Automatically saves your Headers, Auth tokens, and Body payloads in history.
- **🌍 Environment Variables:** Define variables once and inject them anywhere using `{{variable_name}}`.
- **🎨 Developer UX:** Dark mode UI, JetBrains Mono typography, and custom JSON syntax highlighting.
- **🛡️ Edge Case Handling:** Built-in guards to prevent accidental request firing while formatting JSON payloads.

---

## 🚀 Try It Live
Experience the tool instantly on our global Edge CDN:
👉 **[https://api-sisyphus.vercel.app/](https://api-sisyphus.vercel.app/)**

---

## 📖 Quick Start Guide

### 1. The Magic of Environment Variables
Stop typing the same base URLs repeatedly.
1. Open the **Environment** tab in the left sidebar.
2. Add Key: `API_BASE` | Value: `https://jsonplaceholder.typicode.com`
3. In the main URL bar, type: `{{API_BASE}}/users/1`
4. Hit **SEND** (or `Ctrl/Cmd + Enter`).

### 2. Sending Authenticated Requests
1. Navigate to the **Auth** tab.
2. Select **Bearer Token** and paste your JWT.
3. API Sisyphus automatically injects the `Authorization` header into your request.

### 3. Persistent History
Every request is saved locally. Click any item in the **History** sidebar to instantly restore the exact URL, Method, Headers, and Body payload you used previously.

---

## ⚠️ The CORS Reality (Please Read)

Because API Sisyphus runs natively inside your web browser, it is bound by the browser's **Cross-Origin Resource Sharing (CORS)** security policies.

*   **✅ What Works:** Public APIs designed for developers (GitHub API, Stripe Test API, PokeAPI, JSONPlaceholder).
*   **❌ What Fails:** Highly secure or consumer-facing sites (YouTube, Netflix, Banking APIs) that block browser-based scraping. You will see a `Failed to fetch` error. *This is your browser protecting you, not a bug in the tool.*

*Pro-Tip: To test restricted local Docker containers, run this app via a local web server (see below) rather than opening the raw HTML file.*

---

## 💻 Run Locally (For Developers)

Want to fork it and run it on your own machine?

**Option 1: Python (Fastest)**
```bash
python3 -m http.server 8080
# Visit http://localhost:8080