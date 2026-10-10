#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_BORRAR2_DESCRIPTION="New description"
NEW_BORRAR2_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_BORRAR2_FLAGS_MANDATORY="name,push"

BUILD_BORRAR2_DESCRIPTION="Build description"
BUILD_BORRAR2_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_BORRAR2_FLAGS_MANDATORY="name"

DELETE_BORRAR2_DESCRIPTION="Deletes a $(lower BORRAR2) project"
DELETE_BORRAR2_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_BORRAR2_FLAGS_MANDATORY="name"

PROGRAM_BORRAR2_DESCRIPTION="Program device description"
PROGRAM_BORRAR2_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_BORRAR2_FLAGS_MANDATORY="devices,name"

RUN_BORRAR2_DESCRIPTION="Run description"
RUN_BORRAR2_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_BORRAR2_FLAGS_MANDATORY="name"

VALIDATE_BORRAR2_DESCRIPTION="Validate description"
VALIDATE_BORRAR2_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_BORRAR2_FLAGS_MANDATORY="devices,flag1,flag2"