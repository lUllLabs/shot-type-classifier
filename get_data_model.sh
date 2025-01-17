#!/bin/bash

echo "Creating directories to store the model & data"
mkdir models
mkdir train
mkdir valid

echo "Downloading .pth model"
cd models/
wget -O shot-type-classifier.pth https://www.dropbox.com/s/f9703kbb2l82fsd/stage-3-2.pth?dl=0
echo "Downloading .pkl model (for inference)"
wget -O shot-type-classifier.pkl https://www.dropbox.com/s/ixt7oxw8j54aorq/shot-type-classifier.pkl?dl=0

echo "Downloading dummy training data"
cd ../train/
wget --max-redirect=20 -O train.zip https://www.dropbox.com/sh/c164dthxczdqwmd/AADJIKAYXp1wPkMFznQlZ1Cka?dl=0
unzip train.zip
rm train.zip

echo "Downloading validation data"
cd ../valid/
wget --max-redirect=20 -O valid.zip https://www.dropbox.com/sh/d8rrrwg7zihzz7y/AAAnFE5jSEroVA0Q5u9ugecQa?dl=0
unzip valid.zip
rm valid.zip
