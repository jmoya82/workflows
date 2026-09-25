#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_PROVA2_DESCRIPTION="New description"
NEW_PROVA2_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_PROVA2_FLAGS_MANDATORY="name,push"

BUILD_PROVA2_DESCRIPTION="Build description"
BUILD_PROVA2_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_PROVA2_FLAGS_MANDATORY="name"

DELETE_PROVA2_DESCRIPTION="Deletes a $(lower PROVA2) project"
DELETE_PROVA2_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_PROVA2_FLAGS_MANDATORY="name"

PROGRAM_PROVA2_DESCRIPTION="Program description"
PROGRAM_PROVA2_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
)
PROGRAM_PROVA2_FLAGS_MANDATORY="devices,name"

RUN_PROVA2_DESCRIPTION="Run description"
RUN_PROVA2_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_PROVA2_FLAGS_MANDATORY="name"

VALIDATE_PROVA2_DESCRIPTION="Validate description"
VALIDATE_PROVA2_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_PROVA2_FLAGS_MANDATORY="devices,flag1,flag2"