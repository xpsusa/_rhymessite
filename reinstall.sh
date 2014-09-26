#!/bin/bash

#
# This script (re)installs a local RhymeSite site using Drush's site-install
# command.
#
# Before running this script for the first time, you must:
#   - cd docroot/sites/default
#   - cp example.settings.local.php settings.local.php
#   - edit settings.local.php with credentials for your local database
#
# Usage:
#   cd top-level/of/site/repo
#   ./reinstall.sh
#
echo "(Re)installing RhymesSite..."
cd docroot; drush site-install rhymesdistro -y --account-name=admin --account-pass=admin --site-name="Rhymes Site";

echo "Installing site-specific www.rhymessite.com content and configuration..."
drush en com_rhymessite_www -y;
