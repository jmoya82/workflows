#!/usr/bin/env bash

# helpers
lower() {
  printf '%s' "${1,,}"
}

NEW_MPI_DESCRIPTION="New description"
NEW_MPI_FLAGS=(
  "name,n,Project name,-,-"
  "push,p,Push to GitHub,0|1,1"
)
NEW_MPI_FLAGS_MANDATORY="name,push"

BUILD_MPI_DESCRIPTION="Build description"
BUILD_MPI_FLAGS=(
  "name,n,Project name,-,-"
)
BUILD_MPI_FLAGS_MANDATORY="name"

DELETE_MPI_DESCRIPTION="Deletes a $(lower MPI) project"
DELETE_MPI_FLAGS=(
  "name,n,Project name,-,-"
)
DELETE_MPI_FLAGS_MANDATORY="name"

PROGRAM_MPI_DESCRIPTION="Program device description"
PROGRAM_MPI_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "name,n,Project name,-,-"
  "remote,r,Also configure remote devices when set to 1,0|1,0"
)
PROGRAM_MPI_FLAGS_MANDATORY="devices,name"

RUN_MPI_DESCRIPTION="Run description"
RUN_MPI_FLAGS=(
  "name,n,Project name,-,-"
)
RUN_MPI_FLAGS_MANDATORY="name"

VALIDATE_MPI_DESCRIPTION="Validate description"
VALIDATE_MPI_FLAGS=(
  "devices,d,Comma-separated list of device indices,-,-"
  "flag1,a,Flag 1 description,1-8,1"
  "flag2,b,Flag 2 description,8|16,8"
)
VALIDATE_MPI_FLAGS_MANDATORY="devices,flag1,flag2"