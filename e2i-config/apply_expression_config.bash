#!/bin/bash
srcfolder=expression_config
destfolder=/usr/local/EdgeSense/e2i-edge-webconsole/server/worker/APIGateway/config/expression

cp -rf ${srcfolder}/* ${destfolder}
systemctl restart APIGateway.service

echo "done"
