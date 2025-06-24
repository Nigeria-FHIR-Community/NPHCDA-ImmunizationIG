#!/bin/bash
set -e

BRANCH="gh-pages"
FOLDER="output"
TEMP_DIR="../gh-pages-temp"

# Build output if needed
# ./build.sh

# Create worktree
git worktree add -B $BRANCH $TEMP_DIR origin/$BRANCH || git worktree add -B $BRANCH $TEMP_DIR

# Clear old contents
rm -rf $TEMP_DIR/*

# Copy new output
cp -r $FOLDER/* $TEMP_DIR

# Commit and push
cd $TEMP_DIR
git add .
git commit -m "Deploy updated $FOLDER"
git push origin $BRANCH

# Clean up
cd ..
git worktree remove $TEMP_DIR
