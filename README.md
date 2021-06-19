## :rocket: Project

### Requirements

[ ] It should request free games at the epic store

[ ] It should map returned games into messages

[ ] It should return a list of message

## :computer: Techs

- Ruby
- Functions Framework
- RSpec

## :thinking: How to use

### Running functions locally

```sh
git clone git@github.com:flaviogf/free_games.git

cd free_games

bundle install

bundle exec functions-framework-ruby --target search

# It's running at http://localhost:8080
```

### Deploying to Cloud Functions

```sh
git clone git@github.com:flaviogf/free_games.git

cd free_games

export YOUR_FUNCTION_NAME=alexa-skill-free-games-search

export YOUR_FUNCTION_TARGET=search

export YOUR_PROJECT_ID=proj-xpto

gcloud functions deploy $YOUR_FUNCTION_NAME \
    --project=$YOUR_PROJECT_ID \
    --runtime=ruby27 \
    --trigger-http \
    --entry-point=$YOUR_FUNCTION_TARGET

# Look at the command output to encounter the function URL
```

## :memo: License

This project contains the MIT license. See the file [LICENSE](LICENSE).