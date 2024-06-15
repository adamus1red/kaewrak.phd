#!/bin/bash

gem install jekyll bundler
npm install
sass --style=compressed src/styles/main.scss assets/css/main.css 
jekyll build
