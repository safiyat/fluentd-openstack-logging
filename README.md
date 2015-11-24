## ISSUES
- ~~Fluentd flushes to elasticsearch with an impatient delay.~~

## To be done
- ~~Categorize the logs in their various indices.~~
- ~~Write all the configs and include them in the `collector.conf`~~
- Set up log rotation. Use [curator](https://github.com/elastic/curator)
- Rabbitmq and Mysql log config
- Parse the request tokens into request id, user id, and tenant id. Look [here](https://review.openstack.org/cat/114485%2C1%2Ctools/ansible-openstack-log/templates/etc/td-agent/td_agent.conf%5E0).
- Parse the log file `/var/log/apache2/keystone.log`
- ~~**Parse the nova-api.log file properly. Skip the stack trace.**~~

## List of interesting plugins



### Used plugins
- [Elasticsearch Plugin](https://github.com/uken/fluent-plugin-elasticsearch)
- [Grok Parser](https://github.com/kiyoto/fluent-plugin-grok-parser)
- [Forest Plugin](https://github.com/tagomoris/fluent-plugin-forest)
- [Retag Plugin](https://github.com/algas/fluent-plugin-retag)
