FROM appsmith/appsmith-ee:latest
ENV APPSMITH_MONGODB_URI="echo mongodb://${CAMPAIGNS_DB_MONGO_MASTER_USERNAME}:${CAMPAIGNS_DB_MONGO_MASTER_PASSWORD}@campaigns-db-mongo-master.default:27017/${APPSMITH_DB_NAME}?authSource=admin";
ENV APPSMITH_REDIS_URL="echo redis://${REDIS_HOST}:${REDIS_PORT}"
ENV BASE_DIR=/opt/capillary/appsmith-poc
RUN echo $BASE_DIR
RUN mkdir -p $BASE_DIR
WORKDIR $BASE_DIR
EXPOSE 80