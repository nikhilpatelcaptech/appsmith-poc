FROM appsmith/appsmith-ee:latest
ENV BASE_DIR=/opt/capillary/appsmith-poc
RUN echo $BASE_DIR
RUN mkdir -p $BASE_DIR
COPY getAppsmithMongoURI.sh $BASE_DIR
RUN chmod +x $BASE_DIR/getAppsmithMongoURI.sh
WORKDIR $BASE_DIR
CMD ["/bin/bash","/getAppsmithMongoURI.sh"]
EXPOSE 80