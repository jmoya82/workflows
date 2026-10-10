#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_BORRAR_DESCRIPTION="New description"
NEW_BORRAR_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_BORRAR_FLAGS_MANDATORY="name,push"

BUILD_BORRAR_DESCRIPTION="Build description"
BUILD_BORRAR_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_BORRAR_FLAGS_MANDATORY="name"

DELETE_BORRAR_DESCRIPTION="Deletes a $(lower BORRAR) project"
DELETE_BORRAR_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_BORRAR_FLAGS_MANDATORY="name"

PROGRAM_BORRAR_DESCRIPTION="Program device description"
PROGRAM_BORRAR_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_BORRAR_FLAGS_MANDATORY="devices,name"

RUN_BORRAR_DESCRIPTION="Run description"
RUN_BORRAR_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_BORRAR_FLAGS_MANDATORY="name"

VALIDATE_BORRAR_DESCRIPTION="Validate description"
VALIDATE_BORRAR_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_BORRAR_FLAGS_MANDATORY="devices,flag1,flag2"