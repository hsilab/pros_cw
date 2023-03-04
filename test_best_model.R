# install.packages("reticulate")
library(reticulate)

# replace the path with the Python folder
use_virtualenv("C:/Users/junho.park/AppData/Local/Programs/Python/Python39/v_cwl")
print("--- venv loading is ok ---")

# replace the path with the downloaded rRet_test.py 
source_python("D:/JP_project_test/hpmpd_v1.1/inst/python/rRet_test.py")
print("--- source_python loading is ok ---")

# replace the path with the downloaded sample_dataset.csv
sample_data <- read.csv(file="D:/JP_project_test/sample_dataset.csv", header=TRUE)
head(sample_data, n=20)

pcps <- sample_data[1,2]
blink <- sample_data[1,3]
perf <- sample_data[1,4]
tct_cycle <- sample_data[1,5]
nC <- sample_data[1,6]
nP <- sample_data[1,7]
nM <- sample_data[1,8]
tct_CPM <- sample_data[1,9]
mem_load <- sample_data[1,10]
training <- sample_data[1,11]
if(sample_data[1,1] == "DC") {
  config_CC <- 0
  config_DC <- 1
  config_PR <- 0
} else if (sample_data[1,1] == "PR") {
  config_CC <- 0
  config_DC <- 0
  config_PR <- 1
} else {
  config_CC <- 1
  config_DC <- 0
  config_PR <- 0
}

print(pcps)
print(blink)
print(perf)
print(tct_cycle)
print(nC)
print(nP)
print(nM)
print(tct_CPM)
print(mem_load)
print(training)
print(config_CC)
print(config_DC)
print(config_PR)

CWL <- predictSingle(pcps, blink, perf, tct_cycle, nC, nP, nM, tct_CPM, mem_load, training, config_CC, config_DC, config_PR)

print(CWL)