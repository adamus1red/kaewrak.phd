#!/bin/bash

gem install jekyll bundler
npm install
sass src/styles/main.scss assets/css/main.css 
jekyll build
