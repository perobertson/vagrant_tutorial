#!/usr/bin/bash

# Get GPG keys for installing RVM
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -

# Install ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby
