#!/usr/bin/env bash

cd ${PWD}
set -e

update()
{
	gem update
	bundle install
}
if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
	echo "Setup and run Jekyll"
	echo ""
	echo "Usage: ${0} [option]"
	echo ""
	echo "Options are not mandatory, only one at a time."
	echo "-a, --assets      Build minimized css style and js script from sources."
	echo "-i, --install     Install Bundler and node modules using Yarn."
	echo ""
	exit 0
fi
if [ "$1" == "-u" ] || [ "$1" == "--update" ]; then
	update
fi
if [ ! -d "node_modules" ] || [ "$1" == "-i" ] || [ "$1" == "--install" ]; then
	echo "Installing Bundler..."
	gem install bundler
	update
	echo "Running Yarn install..."
	yarn --no-bin-links
fi
if [ ! -f "assets/css/style.min.css" ] || [ "$1" == "-a" ] || [ "$1" == "--assets" ]; then
	echo "Running Yarn dist..."
	yarn dist
fi
echo "Running Jekyll..."
bundle exec jekyll serve --watch --host=0.0.0.0
