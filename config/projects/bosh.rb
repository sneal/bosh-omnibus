#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "bosh"
maintainer "Shawn Neal"
homepage "https://github.com/sneal/bosh-omnibus"
package :msi do
  upgrade_code '9a58a128-6488-4c9e-8965-1ef03f058d2c'
end

# Defaults to C:/bosh on Windows
# and /opt/bosh on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# bosh dependencies/components
dependency "ruby"
dependency "ruby-windows-devkit"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
