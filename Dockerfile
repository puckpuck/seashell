FROM nicolaka/netshoot

RUN echo 'alias ll="ls -Ahlp"' >> ~/.bashrc
RUN echo 'alias kcurl="curl -k -H \"Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)\""' >> ~/.bashrc
RUN echo 'export KUBERNETES_API="https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT"' >> ~/.bashrc

CMD ["sleep", "infinity"]
