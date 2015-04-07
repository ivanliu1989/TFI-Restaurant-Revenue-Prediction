setwd("Documents/TFI-Restaurant-Revenue-Prediction")
rm(list = ls());gc()
require(data.table);

train_df <- fread('data/train.csv')
test_df <- fread('data/test.csv')
submission <- fread('data/sampleSubmission.csv')
