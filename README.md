# Gradescope scripts for CIS 545 autograding

This repository contains source files for Gradescope's autograding facilities, described at https://gradescope-autograders.readthedocs.io/en/latest/getting_started/.  By default we are assuming submissions in Python 3.

## The Basic Task

### Gradescope

There are two parts to a Gradescope autograder: (1) the setup script, which installs the necessary software, and (2) the test runner and feedback mechanism, which runs a script over the submission and produces a `results.json` output.

### Nbgrader

Nbgrader, https://nbgrader.readthedocs.io/en/stable/, consists of several parts:

1. A series of scripts that take a "homework template" (with solutions and test cases) and produce a "homework release" (eliding solutions and protected tests).
1. A grading database, with scores and per-question breakdowns.
1. A set of user tools.

We expect that Step 3 is set up outside of Gradescope, eg on the local machine, with statically named **cells** in the notebook for the key parts the user is submitting.

### Gluing them together

From that step, we take the homework template (under `sources/ps1`).  The script will create a local copy of the nbgrader database **for each submission**, and will essentially assume there is one student ("Alyssa Hacker") and one homework ("ps1").  It will run nbgrader for this, then export the results.  Those results are converted back into a JSON file fed to Gradescope.


## Key Files

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
