import subprocess

from flask import Flask
from flask import request

app = Flask(__name__)

@app.route('/render.html', methods=['GET'])
def render_html():

    url = request.args.get('url')
    if url is None:
        return '"url" parameter is required.'

    result = subprocess.run(
        [
            'chromium-browser', '--headless', '--disable-gui', '--dump-dom',
            '--no-sandbox', url
        ],
        stdout=subprocess.PIPE)

    return result.stdout
