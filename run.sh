#!/bin/bash

#install ffmpeg to container
add-apt-repository -y ppa:jonathonf/ffmpeg-3
apt update && apt install -y ffmpeg libav-tools x264 x265

#create folders
mkdir data
cd data
mkdir bin

#run style transfer on video
python transform_video.py --in-path edgeoftomorrow.mp4 \
  --checkpoint ./scream.ckpt \
  --out-path /artifacts/out.mp4 \
  --device /gpu:0 \
  --batch-size 4
