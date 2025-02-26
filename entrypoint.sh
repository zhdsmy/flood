#!/bin/sh
set -eo pipefail

# ANSI colour escape sequences
RED='\033[0;31m'
RESET='\033[0m'

DATA_DIR='/data'

if su-exec $SUID:$SGID [ ! -w "$DATA_DIR" ]; then
    2>&1 echo -e "${RED}####################### WARNING #######################${RESET}"
    2>&1 echo
    2>&1 echo -e "${RED}     No permission to write in '$DATA_DIR' directory.${RESET}"
    2>&1 echo -e "${RED}       Correcting permissions to prevent a crash.${RESET}"
    2>&1 echo
    2>&1 echo -e "${RED}#######################################################${RESET}"
    2>&1 echo

    chown $SUID:$SGID "$DATA_DIR"
fi

exec su-exec $SUID:$SGID "$@"