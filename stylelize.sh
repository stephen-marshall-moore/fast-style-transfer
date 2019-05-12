#! /bin/bash
echo 'ciao, monde' > /artifacts/hello.txt
pwd > /artifacts/working.txt
ls -al /styletransfer/data >> /artifacts/working.txt
ls -al /datasets >> /artifacts/working.txt
mkdir /artifacts/checkpoints
mkdir /artifacts/tests
python style.py --style examples/style/rosemarys.jpg \
  --checkpoint-dir /artifacts/checkpoints/ \
  --vgg-path /styletransfer/data/imagenet-vgg-verydeep-19.mat \
  --train-path /datasets/coco/ \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20
