from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# Script to open Miniflux instance and download feeds.opml to be used to update local Newsboat instance.
# This works despite being implemented stupidly. Created 12/23/2022

# For RSS Readers. Miniflux instance is the source of truth. Newsboat instance gets its feeds from Miniflux. 
# Newsboat feed list is updated every time the "rss" command is entered. See aliases in .bashrc

# Update these variables before using.
site = ...
user = ...
pw = ...

driver = webdriver.Chrome(executable_path='../drivers/chromedriver')

driver.get(site)

username = driver.find_element(By.ID, "form-username")
password = driver.find_element(By.ID, "form-password")

username.send_keys(user)
password.send_keys(pw)

username.submit()

l = driver.find_element(By.PARTIAL_LINK_TEXT, "Feeds")
l.click()

l = driver.find_element(By.PARTIAL_LINK_TEXT, "Export")
l.click()

time.sleep(1)
driver.quit()