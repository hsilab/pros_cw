# pros_cw
This repository has trained models to estimate cognitive workload of upper limb prostheses.
The classes of workload are two (high or low).
The models support two tasks (Clothespin Relocation Test or Southampton Handness Assessment Process - Door Handle).

# Prerequisites
To estimate cognitive workload with these files, users need to have Python (>3.5), R (> 4.0.5), and R studio.

# How to use the files
1. Download all files
2. Run Rstudio
3. Install reticulate package to run python file from R
4. Open rRet_test.py and test_best_model.R from Rstudio
6. Replace file paths in both files (including file names for the .sav file)
7. In the step 6, make sure you have a virtual environment folder under the python folder (You can create it by 'python -m venv path\name_of_the_folder' from your cmd). The path of use_virtualenv() should have the virtual environment folder name at the end of the path.
8. Activate the virtual environment (Go to the Script folder under the created virtual environment from your cmd. Type 'activate')
9. Install essential packages (pip install numpy, pip install pandans, pip install scikit-learn)
10. (Optional) Open sample_dataset.csv 
11. (Optional) Replace the values with new values if you need to change some of them (DO NOT EDIT the first row (label row))
12. Save the csv file9. 
13. Run the test_best_model.R
14. The last line of test_best_model will generate the estimated workload (1 = High, 2 = Low)
