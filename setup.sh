#!/bin/bash

for i in */; do rm -rf ~/.config/$i ; ln -sf $(pwd)/$i ~/.config ; done
