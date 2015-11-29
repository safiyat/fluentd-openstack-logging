#! /usr/bin/env sh

# Set up upstart
sudo cp aggregator.conf /etc/init/

# Copy the elasticsearch config
sudo cp elastic/* /opt/elasticsearch-1.7.2/config/

# Copy the kibana config
sudo cp kibana.yml /opt/kibana-4.1.2-linux-x64/config/

# Copy the td-agent config
sudo cp td-agent.conf /etc/td-agent/td-agent.conf
