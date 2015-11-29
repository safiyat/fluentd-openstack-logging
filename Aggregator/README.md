# Configuring the Aggregator node 

The aggregator node is a standalone machine (on bare metal or VM) that
receives all the logs from the various `td-agent`s on the different collector
nodes, indexes them in `elasticsearch` and visualizes them on the web using
`kibana`.

### Files
1. `td-agent.conf`

    This file contains the configuration for the `td-agent` service running on
    the aggregator node.
    Copy it to the location `/etc/td-agent/`.

2. `aggregator.conf`

    This file is an upstart script, to start the necessary EFK services on the
    aggregator upon boot.
    Copy it to the location `/etc/init/`.

3. `elastic/`

    1. `elasticsearch.yml`

        This file contains the configuration for the elasticsearch daemon
        running on the aggregator.
        Copy it to the location `/opt/elasticsearch-1.7.2/config/`.

    2. `logging.yml`
        This file contains the logging configuration for the elasticsearch
        daemon running on the aggregator.
        Copy it to the location `/opt/elasticsearch-1.7.2/config/`.

4. `kibana.yml`

    This file contains the configuration for kibana running on the aggregator
    node.
    Copy it to the location `/opt/kibana-4.1.2-linux-x64/config/`.
