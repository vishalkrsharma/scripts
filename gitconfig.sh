#!/bin/bash

# Git Config File

echo "Enter Details for git config file:"

echo "Enter username:"
read username

echo "Enter email:"
read useremail

git config --global user.name "$username"
git config --global user.email "$useremail"