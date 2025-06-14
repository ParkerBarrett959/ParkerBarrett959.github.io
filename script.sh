#!/bin/bash
set -e

# Commit hash to pull content from
OLD_COMMIT="71675cd90c33c94b2578aba8cdf50ce81a6aefab"

echo "Starting site rebuild with Architect theme..."

# 1. Backup current _config.yml (just in case)
cp _config.yml _config.yml.bak

# 2. Checkout the relevant files from OLD_COMMIT into a temp folder
TMP_DIR=$(mktemp -d)
echo "Checking out content from commit $OLD_COMMIT into temp dir $TMP_DIR..."

git --work-tree="$TMP_DIR" checkout $OLD_COMMIT -- index.md about.md _posts

# 3. Remove old site files that might conflict or belong to old themes
echo "Cleaning up old theme files and config..."
rm -f _layouts/* _includes/* *.html *.md  # clear existing layout/includes/html/md files at root if any

# 4. Copy over the content files from the temp dir to your working dir
echo "Copying content files to working directory..."
cp -r "$TMP_DIR/index.md" .
cp -r "$TMP_DIR/about.md" .
mkdir -p _posts
cp -r "$TMP_DIR/_posts/"* _posts/

# 5. Write a fresh _config.yml for Architect theme (minimal + customizations)
cat > _config.yml <<EOF
title: Parker Barrett
email: your-email@example.com
description: >- # this means to ignore newlines until "baseurl:"
  Software Developer Portfolio
baseurl: "" # the subpath of your site, e.g. /blog
url: "https://parkerbarrett959.github.io" # the base hostname & protocol for your site
theme: jekyll-theme-architect

plugins:
  - jekyll-feed
  - jekyll-seo-tag

markdown: kramdown
EOF

# 6. Remove temp dir
rm -rf "$TMP_DIR"

echo "Done! Your repo is now set up with the Architect theme and your old content."

echo "Next steps:"
echo "  - Review and edit index.md and about.md as needed."
echo "  - Commit all changes."
echo "  - Push to GitHub to trigger GitHub Pages build."


