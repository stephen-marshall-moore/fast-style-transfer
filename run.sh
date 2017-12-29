#!/bin/bash

#install ffmpeg to container
add-apt-repository -y ppa:jonathonf/ffmpeg-3 2>&1
apt update 2>&1
apt install -y apt-utils 2>&1
sleep 10
apt install -y ffmpeg 2>&1
sleep 10
apt install -y libav-tools 2>&1
sleep 10
apt install -y x264 2>&1
sleep 10
apt install -y x265 2>&1
sleep 10

#create folders
mkdir data
mkdir data/bin

#run style transfer on video
python transform_video.py --in-path examples/content/fox.mp4 \
  --checkpoint ./scream.ckpt \
  --out-path /artifacts/out.mp4 \
  --device /gpu:0 \
  --batch-size 4 2>&1
