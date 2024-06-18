# Grilled Cheese Experiment

Experiment for Western Governors University class Natrual Sciences Lab.

The goal of this is to determine what the best coating is for making grilled cheese sandwiches on the specific gluten free bread I eat.  I have also over-engineered this project for the purpose of learning R.

The included notebook does all data processing using raw images, no editing or data input required.  Samples are identified by numbered dice included in each image.  Once photos of each sample are collected R uses OCR to identify each image and then automatically processes the results.  No data additional data input or image editing is required.

This repository is setup to run on Nix.  The included shell.nix file should install all required dependencies for running the notebook.
