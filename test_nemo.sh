git clone https://github.com/NVIDIA/NeMo.git
sh reinstall.sh

mkdir data
# note that this script requires sox to be installed
# to install sox on Ubuntu, simply do: sudo apt-get install sox
# and then: pip install sox
# get_librispeech_data.py script is located under <nemo_git_repo_root>/scripts
python get_librispeech_data.py --data_root=data --data_set=dev_clean,train_clean_360

# To get all LibriSpeech data, do:
# python get_librispeech_data.py --data_root=data --data_set=ALL

training script
train_example.py

This script trains should finish 50 epochs in about 7 hours on GTX 1080. You should get an evaluation WER of about 30%.