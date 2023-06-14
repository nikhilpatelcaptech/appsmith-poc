#!/bin/bash
export APPSMITH_MONGODB_URI="mongodb://${CAMPAIGNS_DB_MONGO_MASTER_USERNAME}:${CAMPAIGNS_DB_MONGO_MASTER_PASSWORD}@campaigns-db-mongo-master.default:27017/${APPSMITH_DB_NAME}?authSource=admin";
export APPSMITH_REDIS_URL="redis://${REDIS_HOST}:${REDIS_PORT}"