FROM httpd:2.4

# Enabling cgi.
RUN sed -i 's/#LoadModule cgid_module/LoadModule cgid_module/' /usr/local/apache2/conf/httpd.conf && \
    echo 'ScriptAlias /cgi-bin/ "/usr/local/apache2/cgi-bin/"' >> /usr/local/apache2/conf/httpd.conf

# Adding cgi script.
COPY audio.cgi /usr/local/apache2/cgi-bin/
RUN chmod +x /usr/local/apache2/cgi-bin/audio.cgi