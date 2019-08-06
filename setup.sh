#!/usr/bin/env bash
apt-get install -y python3 python3-pip python3-dev

pip3 install nbgrader
# Update these back to the latest versions
pip3 install jupyter-console ipython

# This is for GradeScope
pip3 install -r /autograder/source/requirements.txt
