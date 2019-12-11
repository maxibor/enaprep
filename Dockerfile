FROM nfcore/base:1.7
LABEL authors="Maxime Borry" \
      description="Docker image containing all requirements for nf-core/enaprep pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-enaprep-1.0dev/bin:$PATH
