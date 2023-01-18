#! /bin/bash

profiles_path="/Users/$(whoami)/Library/Application Support/Firefox/Profiles"
profile="$(/bin/ls "$profiles_path" | grep -i release)"
chrome_path="$profiles_path/$profile/chrome"

rm -rf "$chrome_path"
cp -R chrome "$chrome_path"
