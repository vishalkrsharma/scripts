#!/bin/bash

# Generate SSH Key

ssh-keygen -t ed25519 -C "vishalkrsharma1234@gmail.com" -yy

# Start SSH Agent

eval "$(ssh-agent -s)"

cat ~/.ssh/id_ed25519.pub