#!/bin/bash

#
# This script re-assembles the docroot inside our site repository.
#
# Usage:
#   cd top-leve/of/site/repo
#   ./rebuild.sh
#

echo "************** NOTE **************"
echo "If you are doing a public release, please make sure: 1. Changes to contrib projects we maintain have been synced with external project repos. (These are all symlinked into the docroot from the projects directory.) 2. The git subtree in this site repo corresponds with the tagged release in the project's make file. These steps are NOT handled by this script."
echo "**********************************"

echo "Removing docroot."
rm -rf docroot

echo "Rebuilding docroot with drush make."
drush make build.make docroot --concurrency=5

echo "For contrib projects we maintain, remove Drush Make's downloads and restore symlinks to directories (git subtrees) inside top-level projects directory:"
echo "docroot/profiles/rhymesdistro"; rm -rf docroot/profiles/rhymesdistro; git checkout -- docroot/profiles/rhymesdistro;
echo "docroot/sites/all/modules/rhymesdistro/rhymes"; rm -rf docroot/sites/all/modules/rhymesdistro/rhymes; git checkout -- docroot/sites/all/modules/rhymesdistro/rhymes;

echo "Restore symlinks to custom (not contributed) projects:"
echo "docroot/sites/all/modules/custom/com_rhymessite_www"; git checkout -- docroot/sites/all/modules/custom/com_rhymessite_www;

echo "Restore symlinks to static assets:"
echo "sites/default"; rm docroot/sites/default;git checkout -- docroot/sites/default

echo "Removing Drupal core's .gitignore."
rm docroot/.gitignore

echo "***** NOTE TO RELEASE MASTERS ******"
echo "If you're prepping a release after everything passed QA, you shouldn't see any code changes in the repo right now. Running rebuild.sh should change nothing and just confirm your make files are all up to date. If there are changes in the repo now, update external projects and make files before committing, tagging and releasing."
echo "************************************"
