#!/bin/sh

echo "Cloning repositories..."

PROJECTS=$HOME/Projects

# Projects
git clone git@github.com:indiegogo/monorail.git $PROJECTS/monorail
git clone git@github.com:indiegogo/ops_tools.git $PROJECTS/ops_tools
git clone git@github.com:indiegogo/Chef-Repo.git $PROJECTS/Chef-Repo
git clone git@github.com:indiegogo/flux-get-started.git $PROJECTS/flux-get-started
git clone git@github.com:indiegogo/igg-deploy.git $PROJECTS/igg-deploy
