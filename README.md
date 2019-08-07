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
  
* `nbgrader_config.py`
