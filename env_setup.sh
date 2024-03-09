git clone https://github.com/acbull/GPT-GNN.git
cd GPT-GNN

# If you are using NYU HPC, make sure to set up the Conda Environment as https://sites.google.com/nyu.edu/nyu-hpc/hpc-systems/greene/software/conda-environments-python-r
# Or Singularity disk https://sites.google.com/nyu.edu/nyu-hpc/hpc-systems/greene/software/singularity-with-miniconda
# to build your own virtual environment for the project

# Install regular packages
pip install texttable dill==0.3.0 numpy==1.22.0 tqdm==4.31.1 seaborn==0.9.0 matplotlib==3.0.3
pip install torch==1.11.0

# Install PyG packages
pip uninstall torch-scatter torch-sparse torch-geometric torch-cluster  --y
pip install torch-scatter -f https://data.pyg.org/whl/torch-{1.11.0+cu102}.html
pip install torch-sparse -f https://data.pyg.org/whl/torch-{1.11.0+cu102}.html
pip install torch-cluster -f https://data.pyg.org/whl/torch-{1.11.0+cu102}.html
pip install git+https://github.com/pyg-team/pytorch_geometric.git
pip install transformers==4.30.0

# Download Dataset or Pretrained model from Google Drive
pip uninstall gdown -y && pip install gdown
gdown -V
# Here is an example of how to download preprocessd OAG dataset
mkdir datadrive
cd datadrive
mkdir models
cd models
gdown --folder https://drive.google.com/drive/folders/1a85skqsMBwnJ151QpurLFSa9o2ymc_rq -O ./

cd ..
cd ..

# Now you should be ready to run the Python code!
