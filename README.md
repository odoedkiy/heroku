# GitHub Deployer for Heroku

The GitHub Deployer for [Heroku](https://heroku.com/) task wraps the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) to enable common Heroku commands.

## Usage

```
task "deploy" {
  uses = "tundra-boa/heroku@master"
  command = "container:release web --app my-app"

  secret = {
    "HEROKU_API_TOKEN"
  }
}
```
