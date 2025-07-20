#!/bin/bash

# Portfolio Website Local Development Server
# This script starts a local server to preview the portfolio website

echo "🚀 Starting Poorvesh Portfolio Local Server..."
echo "📁 Serving from: resume-website/"

# Check if we're in the right directory
if [ ! -f "resume-website/index.html" ]; then
    echo "❌ Error: resume-website/index.html not found"
    echo "Please run this script from the root of the repository"
    exit 1
fi

# Change to the resume-website directory
cd resume-website

# Check for available server options and start the best one
if command -v python3 &> /dev/null; then
    echo "🐍 Using Python 3 server"
    echo "🌐 Website will be available at: http://localhost:8000"
    echo "⏹️  Press Ctrl+C to stop the server"
    echo ""
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "🐍 Using Python server"
    echo "🌐 Website will be available at: http://localhost:8000"
    echo "⏹️  Press Ctrl+C to stop the server"
    echo ""
    python -m http.server 8000
elif command -v node &> /dev/null; then
    echo "📦 Using Node.js serve"
    echo "🌐 Website will be available at: http://localhost:3000"
    echo "⏹️  Press Ctrl+C to stop the server"
    echo ""
    npx serve . -p 3000
else
    echo "❌ No suitable server found!"
    echo "Please install one of the following:"
    echo "  - Python 3: https://python.org"
    echo "  - Node.js: https://nodejs.org"
    echo ""
    echo "Or use any other static file server of your choice"
    exit 1
fi