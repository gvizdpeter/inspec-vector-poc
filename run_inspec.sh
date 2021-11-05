#!/bin/bash

/opt/inspec/bin/inspec exec --chef-license=accept /tmp/tests --reporter json:- | /usr/bin/jq -r '.profiles[0].controls[]|"\(.)"'
