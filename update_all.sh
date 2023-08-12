#!/bin/bash
git fetch --recurse-submodules -j2
git submodule foreach git checkout main
git submodule foreach git reset --hard origin/main
