#!/bin/bash
cd "$(dirname "$0")/BACKEND"
npm init -y
npm install express pg cors
node app.js