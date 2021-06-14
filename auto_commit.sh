#!/bin/bash
commit_time=$(date '+%Y-%m-%d-%H')
cd /home/ted/custom-iptv/
/usr/bin/python make_playlist_serverside.py >> make.log
git add -A
git commit --no-gpg-sign -m  "[BOT] automatic update ${commit_time}"
git push
