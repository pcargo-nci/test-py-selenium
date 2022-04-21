from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options

# set chrome options
chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-extensions")
chrome_options.add_argument("--window-size=1920,1080")
#chrome_options.add_argument("--disable-gpu")
#chrome_options.add_argument("--no-sandbox") # linux only

# loading a specific webdriver file
# https://chromedriver.chromium.org/downloads
#browser = webdriver.Chrome('chromedriver_100.exe')

# use a manager service to download the webdriver
browser = webdriver.Chrome(
    options=chrome_options,
    service=Service(ChromeDriverManager().install())
    )

# load a URL
browser.get('https://www.youtube.com/')

# assert
assert 'YouTube' in browser.title

# save screenshot
browser.save_screenshot("youtube.png")

# exit browser
browser.quit()