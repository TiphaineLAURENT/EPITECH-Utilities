#!/bin/bash

echo "Adding directory path to your environnement"
cp -a .bin ~/.bin
echo -e "export PATH=\$PATH\":~/.bin\"" >> ~/.bashrc
source ~/.bashrc
echo "Done"
