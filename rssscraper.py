from selenium import webdriver
from selenium.webdriver.common.by import By
import time

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