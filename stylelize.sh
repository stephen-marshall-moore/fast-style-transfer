#! /bin/bash
echo 'ciao, monde' > /artifacts/hello.txt
mkdir /artifacts/checkpoints
python style.py --style examples/style/rosemarys.jpg \
  --test examples/content/chicago.jpg \
  --checkpoint-dir /artifacts/checkpoints/ \
  --vgg-path /styletransfer/data/imagenet-vgg-verydeep-19.mat \
  --train-path /datasets/coco/ \
  --test-dir tests/ \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20
