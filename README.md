# Gradescope scripts for CIS 545 autograding

This repository contains source files for Gradescope's autograding facilities, described at https://gradescope-autograders.readthedocs.io/en/latest/getting_started/.  By default we are assuming submissions in Python 3.

The main components are:
* `setup.sh`:  This installs (onto the Gradescope Ubuntu 18.04 image) common libraries and the nbgrader package, including:

  * `pandas` and `numpy`
  * `tensorflow`
  * `pyspark`
  * `networkx`
  * `matplotlib`
  * `sqlalchemy`
  * `keras-preprocessing`
  
* `nbgrader_config.py` - configuration for nbgrader.  Assumes one student (with ID 'hacker', aka Alyssa Hacker) and one problem set, `ps1`.
* `requirements.txt` - this is a Python dependencies file for pip.  Include versioned dependencies here.
* `run_autograder` - this is a bash script to run nbgrader (with feedback) and to generate the `results.json` file Gradescope expects.
