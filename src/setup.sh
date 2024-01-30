#!/bin/bash
# Commands to setup a new conda environment and install all the necessary packages
# See the environment.yaml file for "conda env export > environment.yaml" after running this.
source activate
set -e

conda create -n mindeye python=3.10.8 -y
conda activate mindeye
pip install torchvision==0.15.2 torch==2.0.1
pip install chardet
conda install numpy matplotlib tqdm scikit-image jupyterlab -y
pip install accelerate==0.23.0
pip install vector-quantize-pytorch==1.12.12
pip install clip-retrieval webdataset clip pandas matplotlib ftfy regex kornia umap-learn
pip install dalle2-pytorch


pip install diffusers==0.13.0

pip install info-nce-pytorch==0.1.0
pip install pytorch-msssim
python -m ipykernel install --user --name mindeye