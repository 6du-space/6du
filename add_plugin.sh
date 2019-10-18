#!/usr/bin/env bash

cd `dirname "$0"`/plugin

git submodule add --force git@github.com:6du-plugin/$1.git

