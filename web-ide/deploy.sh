#!/bin/bash

# VARIABLES
COMMON_VARS_PATH="<COMMON_VARS_FILE_PATH>"     # common_vars.yml File Path (e.g. ../../common/common_vars.yml)

# DEPLOY
bosh -e ${BOSH_ENVIRONMENT} -n -d web-ide deploy --no-redact web-ide.yml \
    -o operations/${CURRENT_IAAS}-network.yml \
    -l ${COMMON_VARS_PATH} \
    -l vars.yml
