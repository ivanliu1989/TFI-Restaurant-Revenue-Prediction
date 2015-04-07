setwd("Documents/TFI-Restaurant-Revenue-Prediction")
rm(list = ls());gc()
require(data.table);require(caret)

train_df <- data.frame(fread('data/train.csv'))
test_df <- data.frame(fread('data/test.csv'))
submission <- data.frame(fread('data/sampleSubmission.csv'))

head(train_df);head(test_df);head(submission)
str(train_df)

fit <- train(revenue ~ ., data=train_df[,-1], method = 'rf')
