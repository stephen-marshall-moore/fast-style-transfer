#! /bin/bash
./setup.sh
echo "ciao, monde" > artifacts/hello.txt
python style.py --style examples/style/rosemarys.jpg \
  --test examples/content/chicago.jpg
  --checkpoint-dir artifacts \
  --content-weight 1.5e1 \
  --checkpoint-iterations 500 \
  --batch-size 20
