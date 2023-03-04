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
5. Replace file paths
6. Open sample_dataset.csv 
7. Replace the values (DO NOT EDIT the first row (label row))
8. Save the csv file
9. Run the test_best_model.R
10. The last line of test_best_model will generate the estimated workload (1 = High, 2 = Low)
