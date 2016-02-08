# Fluentd configuration for parsing OpenStack Logs

This project is a collection of fluentd configuration files for parsing and forwarding openstack compute, controller and network node logs to fluentd-forwarder, and finally to Elasticsearch.

## Guidelines
- No comments. Code should be self-explanatory.
- `log_level` must always be warn.
- `format_firstline` must not contain string captures.
- `timestamp` must conform to this standard: **_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_+05:30**

## ISSUES


## To be done
- Set up log rotation. Use scroll and bulk API.
- Ceph, Icinga, RabbitMQ and MySQL log config
- Parse the request tokens into request id, user id, and tenant id. Look [here](https://review.openstack.org/cat/114485%2C1%2Ctools/ansible-openstack-log/templates/etc/td-agent/td_agent.conf%5E0).

## Configuration
### Aggregator
- Fluentd
  - Log level: TRACE
  - IP: 0.0.0.0 (Default is 0.0.0.0)
  - Port: 24220 (Default is 24224)

- Elasticsearch
  - Clustername: sdcloud
  - IP: 0.0.0.0 (Default is 0.0.0.0)
  - Port: 9200 (Default is 9200)
  - Flush interval: 1s
  - Index name: Second tag part
  - Type name: Third tag part

### Collector
- Connet
  - Forward to
    - Active: 10.41.0.112:24220
    - Standby: 10.41.0.111:24220

- Compute
  - Forward to
    - Active: 10.41.0.112:24220
    - Standby: 10.41.0.111:24220

## Used plugins
- [Elasticsearch Plugin](https://github.com/uken/fluent-plugin-elasticsearch)
- ~~[Grok Parser](https://github.com/kiyoto/fluent-plugin-grok-parser)~~
- [Forest Plugin](https://github.com/tagomoris/fluent-plugin-forest)
- [Retag Plugin](https://github.com/algas/fluent-plugin-retag)
