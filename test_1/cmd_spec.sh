#!/usr/bin/env bash

# constants
INVENTORY_PATH="$("$ODEV_PATH/src/read_yml.py" --db "$ODEV_PATH/vars.yml" paths inventory)"

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_TEST_1_DESCRIPTION="New description"
NEW_TEST_1_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_TEST_1_FLAGS_MANDATORY="name,push"

BUILD_TEST_1_DESCRIPTION="Build description"
BUILD_TEST_1_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_TEST_1_FLAGS_MANDATORY="name"

DELETE_TEST_1_DESCRIPTION="Deletes a $(lower TEST_1) project"
DELETE_TEST_1_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_TEST_1_FLAGS_MANDATORY="name"

PROGRAM_TEST_1_DESCRIPTION="Program device description"
PROGRAM_TEST_1_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "hosts,,Target host or group from ${bold:-}$INVENTORY_PATH/hosts_$USER${normal:-} (default: local),-,local"
)
PROGRAM_TEST_1_FLAGS_MANDATORY="devices,name"

RUN_TEST_1_DESCRIPTION="Run description"
RUN_TEST_1_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_TEST_1_FLAGS_MANDATORY="name"

VALIDATE_TEST_1_DESCRIPTION="Validate description"
VALIDATE_TEST_1_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_TEST_1_FLAGS_MANDATORY="devices,flag1,flag2"
