#!/bin/bash

# script to scrap Miniflux instance for feeds.opml file, update Newsboat with it, then remove the file and open Newsboat.
# Depends on /home/gula/scripts/webscraper.py to work. Created 12/23/2022

# For RSS Readers. Miniflux instance is the source of truth. Newsboat instance gets its feeds from Miniflux. 
# Newsboat feed list is updated every time the "rss" command is entered. See aliases in .bashrc

echo "running Newsboat RSS feeds.opml import"

python3 /home/gula/scripts/webscraper.py

newsboat -i /home/gula/Downloads/feeds.opml 

rm /home/gula/Downloads/feeds.opml 

echo "finished Newsboat RSS feeds.opml import"

newsboat

