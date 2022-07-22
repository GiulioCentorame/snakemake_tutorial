FROM snakemake/snakemake:stable
ADD environment.yaml .
RUN mamba create -n snakemake --clone snakemake; \
    mamba env update -n snakemake -f environment.yaml;
RUN mkdir -p /tmp/conda
ENV CONDA_PKGS_DIRS /tmp/conda
