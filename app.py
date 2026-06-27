
import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello from Tushar'

if __name__ == "__main__":
    # Render ke PORT variable ka use karo, warna 5000 use karo
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
