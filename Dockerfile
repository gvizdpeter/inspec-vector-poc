FROM timberio/vector:0.17.3-alpine as vector

FROM chef/inspec:4.49

RUN apt-get update && apt-get install -y jq

COPY --from=vector /usr/local/bin/vector /usr/local/bin/vector
COPY --from=vector /etc/vector/vector.toml /etc/vector/vector.toml
COPY run_inspec.sh /run_inspec.sh

RUN chmod a+x /run_inspec.sh

RUN /opt/inspec/bin/inspec exec --chef-license=accept

ENTRYPOINT ["/usr/local/bin/vector"]
