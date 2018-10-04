workflow "on-push" {
  on = "push"
  resolves = "push"
}

action "shellcheck" {
  uses = "docker://superbbears/shellcheck"
  args = "*.sh"
}

action "bats" {
  uses = "docker://superbbears/bats"
  args = "test/*.bats"
}

action "dockerfilelint" {
  uses = "docker://replicated/dockerfilelint"
  args = ["Dockerfile"]
}

action "login" {
  needs = ["bats"]
  uses = "superb-bears/docker/login@master"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "build" {
  needs = ["login", "shellcheck", "bats", "dockerfilelint"]
  uses = "superb-bears/docker/cli@master"
  args = "build -t heroku ."
}

# TODO Branch filter
action "tag" {
  needs = ["build"]
  uses = "superb-bears/docker/tag@master"
  args = "heroku superbbears/heroku"
}

action "push" {
  needs = ["tag"]
  uses = "superb-bears/docker/cli@master"
  args = "push superbbears/heroku"
}
