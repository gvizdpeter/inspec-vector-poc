FROM timberio/vector:0.17.3-alpine as vector

FROM chef/inspec:4.49

COPY --from=vector /usr/local/bin/vector /usr/local/bin/vector
COPY --from=vector /etc/vector/vector.toml /etc/vector/vector.toml
VOLUME ["/var/lib/vector/"]

RUN /opt/inspec/bin/inspec exec --chef-license=accept

ENTRYPOINT ["/usr/local/bin/vector"]
