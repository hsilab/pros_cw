import numpy as np
import pickle
import pandas as pd

# replace the best_model.sav file path
loaded_model = pickle.load(open('D:/JP_project_test/hpmpd_v1.1/inst/python/nb_0_cluster_2_K-Best_4_9156777.sav', 'rb')) 

print("--- Load the model is ok ---")

def predictSingle(pcps, blink, perf, tct_cycle, nC, nP, nM, tct_CPM, mem_load, training, CC, DC, PR):
    # print("Testing Started.")
    data = {'pcps': [pcps],
        'blink': [blink],
        'perf': [perf],
        'tct_cycle': [tct_cycle],
        'nC': [nC],
        'nP': [nP],
        'nM': [nM],
        'tct_CPM': [tct_CPM],
        'mem_load': [mem_load],
        'training': [training],
        'CC': [CC],
        'DC': [DC],
        'PR': [PR]}
    df = pd.DataFrame(data)
    # print("Testing Completed.")
    return (loaded_model.predict(df))

print("--- Read rRet_test is ok ---")

