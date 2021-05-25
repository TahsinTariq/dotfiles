# Installing jupyter labs and evcxr

conda create -n evcxr python=3.7.9
conda install -c conda-forge jupyterlab
cargo install evcxr_jupyter
evcxr_jupyter --install
jupyter labextension install base16-nord