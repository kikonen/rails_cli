# USAGE

## Create
```bash
scripts/create_app.sh test_app
```

## Verify
If needed verify that gems and env builds fine
```bash
docker-compose up -d
docker-compose exec web sh
cd test_app
bundle install
rails webpacker:install
```

## Result

Copied into "output" dir

# References
- https://thoughtbot.com/blog/rails-on-docker
- https://github.com/nodesource/distributions
