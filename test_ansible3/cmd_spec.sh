#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_TEST_ANSIBLE3_DESCRIPTION="New description"
NEW_TEST_ANSIBLE3_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_TEST_ANSIBLE3_FLAGS_MANDATORY="name,push"

BUILD_TEST_ANSIBLE3_DESCRIPTION="Build description"
BUILD_TEST_ANSIBLE3_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_TEST_ANSIBLE3_FLAGS_MANDATORY="name"

DELETE_TEST_ANSIBLE3_DESCRIPTION="Deletes a $(lower TEST_ANSIBLE3) project"
DELETE_TEST_ANSIBLE3_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_TEST_ANSIBLE3_FLAGS_MANDATORY="name"

PROGRAM_TEST_ANSIBLE3_DESCRIPTION="Program device description"
PROGRAM_TEST_ANSIBLE3_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_TEST_ANSIBLE3_FLAGS_MANDATORY="devices,name"

RUN_TEST_ANSIBLE3_DESCRIPTION="Run description"
RUN_TEST_ANSIBLE3_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_TEST_ANSIBLE3_FLAGS_MANDATORY="name"

VALIDATE_TEST_ANSIBLE3_DESCRIPTION="Validate description"
VALIDATE_TEST_ANSIBLE3_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_TEST_ANSIBLE3_FLAGS_MANDATORY="devices,flag1,flag2"