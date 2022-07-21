# Hands-on introduction to Snakemake

## Requirements

- Unix/Linux system with access to the internet. It is possible to run this practical on Windows using [WSL](https://docs.microsoft.com/en-us/windows/wsl/install), but it does need some extra work to set it up and sort the dependencies out.
- `git` (to clone this repository)
- `R >= 3.6`

## Setup

Make sure to install Snakemake using the [official installation instructions](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html). 

The full installation via Mamba/Conda is preferred and it takes up ~1.5 GB:

```
# Install Mambaforge
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh

# Install Snakemake
conda activate base
mamba create -c conda-forge -c bioconda -n snakemake snakemake

# Activate the conda environment
conda activate snakemake
snakemake --help
```

Then, clone this repository:
```
git clone https://github.com/GiulioCentorame/snakemake_tutorial.git
```

## Cleanup

If you do not wish to keep using snakemake and/or something went wrong during the installation, you can clean your system up by following the [uninstall instruction for Mamba](https://github.com/conda-forge/miniforge#uninstallation) and remove the `snakemake_tutorial` folder.


