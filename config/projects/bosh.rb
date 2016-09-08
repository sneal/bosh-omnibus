#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "bosh"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/bosh on Windows
# and /opt/bosh on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# bosh dependencies/components
# dependency "somedep"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
