#!/bin/bash

echo "Starting the auto-commit process..."

cd /home/dramikei/valheim-server || exit

echo "Adding all changes, including untracked files..."
git add .

echo "Committing changes..."
git commit -m "chore: Daily auto-commit on $(date)"

echo "Pushing to remote..."
git push origin main

echo "Done."
