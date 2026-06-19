#!/bin/bash

# Real DevOps - Project Setup Script
echo "Setting up new project structure..."

# Create project folders
mkdir -p myapp/src
mkdir -p myapp/logs
mkdir -p myapp/config
mkdir -p myapp/backup

# Create real files
touch myapp/src/app.py
touch myapp/logs/app.log
touch myapp/config/config.txt

# Write real content
echo "APP_NAME=myapp" > myapp/config/config.txt
echo "VERSION=1.0" >> myapp/config/config.txt
echo "ENV=development" >> myapp/config/config.txt

echo "Project structure created successfully!"
echo "Folders created:"
ls myapp/
