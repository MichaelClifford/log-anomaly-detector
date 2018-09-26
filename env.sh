#!/usr/bin/env bash
export LADT_MODEL_DIR="models" # Name of persistant storage directory that models will be saved to
export LADT_ELASTICSEARCH_ENDPOINT='http://elasticsearch.perf.lab.eng.bos.redhat.com:9280' # address to Elasticsearch endpoint
export LADT_MODEL='map.sav' # path to SOM map to update 
export LADT_INDEX='logstash-' # name of Elasticsearch index to pull logs from 
export LADT_TIME_SPAN=900 # number of seconds from now that you would like to query Elasticsearch for training logs
export LADT_MAX_ENTRIES=450000 # limits the number of entries returned from Elasticsearch for the training query
export LADT_ITERS=45000 # number of training iterations of the SOM   
export LADT_SERVICE='journal' # name of Elasticsearch service to be monitored 
export LADT_TRAIN_LAG=15 # Number of Inference iterations between retraining the model
export LADT_UPDATE_MODEL=True 

export LADI_ELASTICSEARCH_ENDPOINT='http://elasticsearch.perf.lab.eng.bos.redhat.com:9280' # address to Elasticsearch endpoint for inference
export LADI_MODEL='map.sav' # path to SOM map to test against
export LADI_INDEX='logstash-' # name of Elasticsearch index to pull logs from 
export LADI_TARGET_INDEX='mcliffor_test_ingest-' # name of index the anoamliy data will be pushed back to in Elasticsearch
export LADI_TIME_SPAN=60 # number of seconds from now that you would like to query Elasticsearch for
export LADI_MAX_ENTRIES=35000 # limits the number of entries returned from Elasticsearch for the inference query
export LADI_SERVICE='journal' # name of Elasticsearch service to be monitored 
export LADI_THRESHOLD=1.5 # float tunes the anomaly threshold based on the max value of the training set