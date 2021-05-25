# Installing miniconda

mkdir /work/Software/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /work/Software/miniconda3/miniconda.sh
zsh /work/Software/miniconda3/miniconda.sh -b -u -p /work/Software/miniconda3
bash /work/Software/miniconda3/miniconda.sh -b -u -p /work/Software/miniconda3
rm -rf /work/Software/miniconda3/miniconda.sh
/work/Software/miniconda3/bin/conda init bash
/work/Software/miniconda3/bin/conda init zsh
