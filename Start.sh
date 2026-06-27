#!/bin/bash
# Bot ko background mein daalo (pehle start karo)
python main.py &

# Web server ko foreground mein chalao (port bind karega)
gunicorn app:app --bind 0.0.0.0:$PORT
