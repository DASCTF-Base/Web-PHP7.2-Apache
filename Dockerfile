FROM php:7.2-apache
COPY files /tmp/files/
RUN chown -R root:root /var/www/html/ && \
    chmod -R 755 /var/www/html && \
    mv /tmp/files/flag.sh / && \
    mv /tmp/files/start.sh / && \
    chmod +x /flag.sh /start.sh && \
    rm -rf /tmp/files
CMD /start.sh
