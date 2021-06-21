## :rocket: Project

:cloud: Cloud function that returns free available games at Epic store. These messages are formatted to integrate into Amazon Alexa. This project was based on [Epic Games - Ruby Script](https://gist.github.com/dvinciguerra/9d26f7ff8fcd0bbacf9d325748dc783a) made by [@dvinciguerra](https://github.com/dvinciguerra)

### Requirements

[x] It should request free games at the epic store

[x] It should map returned games into messages

[x] It should return a list of message

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

### Running functions in Docker

```sh
git clone git@github.com:flaviogf/free_games.git

cd free_games

docker build -t flaviogf/free-games .

docker run --rm -p 8080:8080 flaviogf/free-games --source=app.rb --target=search

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
