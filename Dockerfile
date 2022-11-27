 
# pull base image from UW-IT here https://github.com/uw-it-aca/rttl-notebooks/tree/main/rstudio
FROM us-west1-docker.pkg.dev/uwit-mci-axdd/rttl-images/jupyter-rstudio-notebook:2.4.4
 
# install some R packages useful for text analysis
RUN R -e "install.packages(c('quanteda', 'quanteda.textstats', 'text2vec', 'tidytext', 'spacyr', 'koRpus', 'topicmodels', 'stm', 'openNLP', 'rsvd'), repos='https://cran.rstudio.com')"

# --- Metadata ---
LABEL maintainer = "Ben Marwick <bmarwick@uw.edu>" 
  Name="Dockerfile for the class CSSS 594 WI23 text-as-data" \
  org.opencontainers.image.created="2022-11" \
  org.opencontainers.image.authors="Ben Marwick" \
  org.opencontainers.image.url="https://github.com/benmarwick/CSSS-594-WI23-text-as-data/blob/master/Dockerfile" \
  org.opencontainers.image.documentation="https://github.com/benmarwick/CSSS-594-WI23-text-as-data/" \
  org.opencontainers.image.licenses="Apache-2.0" \
  org.label-schema.description="Reproducible workflow image (license: Apache 2.0)"
