# Hands-on introduction to Snakemake

[![Snakemake](https://img.shields.io/badge/snakemake-7.9.0-brightgreen.svg?style=flat)](https://snakemake.readthedocs.io) ![R](https://img.shields.io/badge/R-%3E%3D3.6-blue)

This tutorial is developed as a practical companion to the mini-workshop **Introduction to Snakemake** held at the Genetics and Genomics Division, Institute of Molecular Bioscience, University of Queensland (7th July 2022). It is intended as a bare-bone introduction to the basic mechanics of scientific workflow management and as a starting point to play around with the basics.

## Run on Gitpod

The easiest way to run this practical is by using Gitpod:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/GiulioCentorame/snakemake_tutorial)

You can then follow the instructions for the tutorial on the [GitHub wiki](https://github.com/GiulioCentorame/snakemake_tutorial/wiki).

## Run locally

### Requirements

- Unix/Linux system with access to the internet. It is possible to run this practical on Windows using [WSL](https://docs.microsoft.com/en-us/windows/wsl/install), but it does need some extra work to set it up and sort the dependencies out.
- `git` (to clone this repository)
- `R >= 3.6`

### Setup

Make sure to install Snakemake using the [official installation instructions](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html). 

The full installation via Mamba/Conda is preferred and it takes up ~1.5 GB. Make sure to install it somewhere with enough space, when it prompts for the installation folder (e.g. for `delta2` users, your `scratch` folder would be ideal):

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

### Run 

The step-by-step instructions for the tutorial are on the [GitHub wiki](https://github.com/GiulioCentorame/snakemake_tutorial/wiki).

### Cleanup

If you do not wish to keep using Snakemake and/or something went wrong during the installation, you can clean your system up by following the [uninstall instruction for Mamba](https://github.com/conda-forge/miniforge#uninstallation) and remove the `snakemake_tutorial` folder.

## Need help?

Snakemake has become a complex piece of software over the years and it might not be the most beginner-friendly, depending on your background. It definitely was not for me.
In case of issues related to the setup or the practical, feel free to open an issue on this repository.

You can also find some help on:
- The excellent [Snakemake documentation](https://snakemake.readthedocs.io/en/stable/). This should always be your starting point and it covers *many* topics that are not present in this tutorial.
- [StackOverflow](https://stackoverflow.com/questions/tagged/snakemake) has ~1.3k questions under the `[snakemake]` tag (chances are someone had your same issue before).
-  The Snakemake's [Google Group](https://groups.google.com/g/snakemake) and [Discord](https://discord.gg/NUdMtmr) are excellent resources to break down more complex issues and they're highly active.
