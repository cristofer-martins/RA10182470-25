@echo off
cd /d "%~dp0BACKEND"
npm init -y
npm install express pg cors
node app.js
