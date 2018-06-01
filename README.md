# chrome-api - A lightweight Javascript rendering service using Google Chrome browser's <a href="https://developers.google.com/web/updates/2017/04/headless-chrome" target="_blank">headless mode</a>.
This simple application is a lightweight alternative to Scrapinghub <a href="http://splash.readthedocs.io/en/stable/install.html" target="_blank">Splash</a>.

Only one HTTP API is implemented:
render_html: Returns the HTML of the Javascript-rendered web page.

Start up using Docker compose:
docker-compose up -d

The app binds locally to port 5000, you can test it by using:
`curl 'http://localhost:5000/render.html?url=http://www.chromestatus.com'`

Replace `http://www.chromestatus.com` with any Javascript web page that you would like to render.

A good use case would be to combine this with scrapy when trying to scrape Javascript web pages.

Pre-built Docker image can be found here:
<a href="https://hub.docker.com/r/edwardaa7/chrome-api/" target="_blank">chrome-api Docker image</a>
