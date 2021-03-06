#!/bin/bash

echo Using org and environment configured in /setup/setenv.sh

source ../../setup/setenv.sh

set -x


curl http://$org-$env.apigee.net/employees/profile \
-H "Content-Type: application/json" \
-d '{"id":"ajones", "firstName":"Alice", "lastName":"Jones", "phone": "201-555-5555" }' \
-X POST

curl "http://$org-$env.apigee.net/employees/profiles"
