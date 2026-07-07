# 🪨 API Sisyphus

**API Sisyphus** is a lightweight, browser-based API testing tool built from scratch with vanilla HTML, CSS, and JavaScript. Designed to be a fast, zero-install alternative to heavy tools like Postman or Insomnia for quick daily API testing. 

*Named after the Greek mythological figure condemned to roll a boulder up a hill for eternity—because testing APIs sometimes feels exactly like that!*

## Features
- **Zero Setup:** Single HTML file. Just open it in your browser.
- **Full HTTP Support:** GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS.
- **Environment Variables:** Define variables once and use them anywhere with `{{variable_name}}`.
- **Smart History:** Automatically saves your requests (including headers, body, and auth) to LocalStorage so you never lose your work.
- **JSON Syntax Highlighting:** Beautiful, color-coded JSON responses.
- **Dark Mode UI:** A sleek, developer-focused interface inspired by modern code editors.

---

## 📖 Part 1: How to Use API Sisyphus (User Guide)

### 1. Make Your First Request (GET)
1. Open the app in your browser.
2. Ensure the method dropdown is set to **GET**.
3. Paste this URL into the address bar: `https://jsonplaceholder.typicode.com/users/1`
4. Click **SEND** (or press `Ctrl + Enter` / `Cmd + Enter`).
5. Watch the response appear with beautiful JSON syntax highlighting!

### 2. Send Data to a Server (POST)
1. Change the method dropdown to **POST**.
2. Enter URL: `https://jsonplaceholder.typicode.com/posts`
3. Click the **Body** tab in the Request pane.
4. Change the Body type dropdown to **JSON**.
5. Paste the following JSON:
   ```json
   {
     "title": "Rolling the boulder",
     "body": "API Sisyphus is working perfectly!",
     "userId": 1
   }