#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_NCCL3_DESCRIPTION="New description"
NEW_NCCL3_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_NCCL3_FLAGS_MANDATORY="name,push"

BUILD_NCCL3_DESCRIPTION="Build description"
BUILD_NCCL3_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_NCCL3_FLAGS_MANDATORY="name"

DELETE_NCCL3_DESCRIPTION="Deletes a $(lower NCCL3) project"
DELETE_NCCL3_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_NCCL3_FLAGS_MANDATORY="name"

PROGRAM_NCCL3_DESCRIPTION="Program device description"
PROGRAM_NCCL3_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_NCCL3_FLAGS_MANDATORY="devices,name"

RUN_NCCL3_DESCRIPTION="Run description"
RUN_NCCL3_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_NCCL3_FLAGS_MANDATORY="name"

VALIDATE_NCCL3_DESCRIPTION="Validate description"
VALIDATE_NCCL3_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_NCCL3_FLAGS_MANDATORY="devices,flag1,flag2"