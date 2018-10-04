#!/usr/bin/env bats

function setup() {
  # Ensure GITHUB_WORKSPACE is set
  export GITHUB_WORKSPACE="${GITHUB_WORKSPACE-"${BATS_TEST_DIRNAME}/.."}"
}

@test "entrypoint runs successfully" {
  run $GITHUB_WORKSPACE/entrypoint.sh help
  echo "$output"
  [ "$status" -eq 0 ]
}
