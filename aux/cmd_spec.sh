#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_AUX_DESCRIPTION="New description"
NEW_AUX_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_AUX_FLAGS_MANDATORY="name,push"

BUILD_AUX_DESCRIPTION="Build description"
BUILD_AUX_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_AUX_FLAGS_MANDATORY="name"

DELETE_AUX_DESCRIPTION="Deletes a $(lower AUX) project"
DELETE_AUX_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_AUX_FLAGS_MANDATORY="name"

PROGRAM_AUX_DESCRIPTION="Program description"
PROGRAM_AUX_FLAGS=(
  "name,n,Project name,-,-"
)
PROGRAM_AUX_FLAGS_MANDATORY="name"

RUN_AUX_DESCRIPTION="Run description"
RUN_AUX_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_AUX_FLAGS_MANDATORY="name"

VALIDATE_AUX_DESCRIPTION="Validate description"
VALIDATE_AUX_FLAGS=(
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_AUX_FLAGS_MANDATORY="flag1,flag2"