#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_HEY_DESCRIPTION="New description"
NEW_HEY_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_HEY_FLAGS_MANDATORY="name,push"

BUILD_HEY_DESCRIPTION="Build description"
BUILD_HEY_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_HEY_FLAGS_MANDATORY="name"

DELETE_HEY_DESCRIPTION="Deletes a $(lower HEY) project"
DELETE_HEY_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_HEY_FLAGS_MANDATORY="name"

PROGRAM_HEY_DESCRIPTION="Program description"
PROGRAM_HEY_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
)
PROGRAM_HEY_FLAGS_MANDATORY="devices,name"

RUN_HEY_DESCRIPTION="Run description"
RUN_HEY_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_HEY_FLAGS_MANDATORY="name"

VALIDATE_HEY_DESCRIPTION="Validate description"
VALIDATE_HEY_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_HEY_FLAGS_MANDATORY="devices,flag1,flag2"