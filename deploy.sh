#!/bin/bash

# GitHub Pages Deployment Script
# Run this after creating a GitHub repository

echo "🚀 Deploying to GitHub Pages..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    git branch -M main
fi

# Add all files
echo "📁 Adding files..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy personal site to GitHub Pages

🤖 Generated with Claude Code

Co-Authored-By: Claude <noreply@anthropic.com>"

# Prompt for GitHub repository URL
echo "🔗 Please enter your GitHub repository URL (e.g., https://github.com/username/personal-site.git):"
read repo_url

# Add remote origin
git remote remove origin 2>/dev/null || true
git remote add origin "$repo_url"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment complete!"
echo "📖 Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Navigate to Settings → Pages"
echo "3. Under 'Source', select 'Deploy from a branch'"
echo "4. Choose 'main' branch and '/ (root)' folder"
echo "5. Click Save"
echo ""
echo "🌐 Your site will be available at: https://username.github.io/repository-name"