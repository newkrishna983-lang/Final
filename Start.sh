#!/bin/bash

# Bot ko start karo (stderr aur stdout dono log me dikhega)
echo "🚀 Starting Telegram Bot (main.py)..."
python main.py 2>&1 &

# Web server ko foreground me start karo
echo "🌐 Starting Gunicorn Web Server..."
gunicorn app:app --bind 0.0.0.0:$PORT
