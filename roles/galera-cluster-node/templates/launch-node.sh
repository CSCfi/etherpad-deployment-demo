#!/bin/bash
docker run --detach \
--name "{{ inventory_hostname }}" \
-e DEBUG=1 \
-e MYSQL_PASS="{{ mysql_password }}" \
-e REP_PASS="{{ replication_password }}" \
-e CLUSTER_MEMBERS="{{ bootstrap_host_ip }}" \
-e HOST="{{ ansible_ssh_host }}" \
-e SERVICE_DISCOVERY=env \
-p "{{ ansible_ssh_host }}:3306:3306" \
-p "{{ ansible_ssh_host }}:4444:4444" \
-p "{{ ansible_ssh_host }}:4567:4567" \
-p "{{ ansible_ssh_host }}:4568:4568" \
paulczar/percona-galera && touch /root/container_started
