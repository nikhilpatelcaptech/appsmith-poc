FROM appsmith/appsmith-ee:latest
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
EXPOSE 80