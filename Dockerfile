FROM appsmith/appsmith-ee:latest
ENV BASE_DIR=/opt/capillary/appsmith-poc
RUN echo $BASE_DIR
RUN mkdir -p $BASE_DIR
WORKDIR $BASE_DIR
EXPOSE 9888