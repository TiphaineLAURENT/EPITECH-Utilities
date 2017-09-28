#!/bin/bash

echo "Adding directory path to your environnement"
echo -e "export PATH=\$PATH\":~/.bin\"" >> ~/.bashrc
export PATH="$PATH:~/.bin"
echo "Done"
