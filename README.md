# USAGE

## Create
```bash
docker-compose up
docker-compose run web rm -fr test_app

# No need to install gems
docker-compose run web  rails new --skip-bundle test_app

# No need to install gems
# - or if wanting to wait
docker-compose run web rails new
```

## Verify
If needed verify that gems and env builds fine
```bash
docker-compose run web sh
cd test_app
bundle install
rails webpacker:install
```

## Result
\\wsl$\docker-desktop-data\version-pack-data\community\docker\volumes\rails_cli_rails_data\_data\test_app


# References
- https://thoughtbot.com/blog/rails-on-docker
- https://github.com/nodesource/distributions
