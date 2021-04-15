#!/bin/bash
ip=
id=
pw=
path=/home/$id

function failed()
{
  echo "$*" >&2
  exit 1
}

function upload () {
  local f=$1
  sshpass -p ${pw} scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -r $f ${id}@${ip}:${path}
}

function remote_exec () {
  local cmd=$@
  #echo ${cmd}
  sshpass -p ${pw} ssh -t ${id}@${ip} -x ${cmd}
}

function remote_rm () {
  local f=$1
  remote_exec rm -rf $f
}

function upload_all () {
  upload apply_modbus_master_config.bash
  upload modbus_master_config
  upload apply_opcua_client_config.bash
  upload opcua_client_config
  upload apply_expression_config.bash
  upload expression_config
}

function apply_all () {
  remote_exec sudo ./apply_modbus_master_config.bash
  remote_exec sudo ./apply_modbus_master_config.bash
  remote_exec sudo ./apply_opcua_client_config.bash
  remote_exec sudo ./apply_expression_config.bash
}

function remote_rm_all () {
  remote_rm apply_modbus_master_config.bash
  remote_rm modbus_master_config
  remote_rm apply_opcua_client_config.bash
  remote_rm opcua_client_config
  remote_rm apply_expression_config.bash
  remote_rm expression_config
}

if [ -z "${ip}" ]; then
    failed "ip is empty!"
fi

if [ -z "${id}" ]; then
    failed "id is empty!"
fi

if [ -z "${pw}" ]; then
    failed "pw is empty!"
fi

upload_all
apply_all
remote_rm_all
