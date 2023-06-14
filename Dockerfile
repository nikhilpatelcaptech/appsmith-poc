FROM appsmith/appsmith-ee:latest
ENV BASE_DIR=/opt/capillary/appsmith-poc
RUN echo $BASE_DIR
RUN mkdir -p $BASE_DIR
COPY entrypoint.sh $BASE_DIR
RUN chmod +x $BASE_DIR/entrypoint.sh
ENTRYPOINT ["${BASE_DIR}/entrypoint.sh"]
WORKDIR $BASE_DIR
EXPOSE 80