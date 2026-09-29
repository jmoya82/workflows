#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_ANSIBLE_TEST_DESCRIPTION="New description"
NEW_ANSIBLE_TEST_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_ANSIBLE_TEST_FLAGS_MANDATORY="name,push"

BUILD_ANSIBLE_TEST_DESCRIPTION="Build description"
BUILD_ANSIBLE_TEST_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_ANSIBLE_TEST_FLAGS_MANDATORY="name"

DELETE_ANSIBLE_TEST_DESCRIPTION="Deletes a $(lower ANSIBLE_TEST) project"
DELETE_ANSIBLE_TEST_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_ANSIBLE_TEST_FLAGS_MANDATORY="name"

PROGRAM_ANSIBLE_TEST_DESCRIPTION="Program description"
PROGRAM_ANSIBLE_TEST_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_ANSIBLE_TEST_FLAGS_MANDATORY="devices,name"

RUN_ANSIBLE_TEST_DESCRIPTION="Run description"
RUN_ANSIBLE_TEST_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_ANSIBLE_TEST_FLAGS_MANDATORY="name"

VALIDATE_ANSIBLE_TEST_DESCRIPTION="Validate description"
VALIDATE_ANSIBLE_TEST_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_ANSIBLE_TEST_FLAGS_MANDATORY="devices,flag1,flag2"