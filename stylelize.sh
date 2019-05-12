#! /bin/bash
echo 'ciao, monde' > /artifacts/hello.txt
python style.py --style examples/style/rosemarys.jpg \
  --test examples/content/chicago.jpg
  --checkpoint-dir checkpoints/ \
  --vgg-path /styletransfer/data/imagenet-vgg-verydeep-19.mat \
  --train-path /datasets/coco/ \
  --model-dir /artifacts \
  --test-dir tests/ \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20
