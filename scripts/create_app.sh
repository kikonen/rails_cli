#!/usr/bin/env bash

SCRIPT_DIR=$(realpath $(dirname $0))
ROOT_DIR=$(dirname $SCRIPT_DIR)

OUTPUT_DIR=$ROOT_DIR/output

APP_NAME="${@: -1}"
if [[ $APP_NAME == "$0" ]]; then
    echo "USAGE: $0 [RAILS_NEW_OPT] [APP_NAME]"
    exit
fi

mkdir -p $OUTPUT_DIR

docker-compose build
docker-compose up -d

docker-compose exec web rm -fr $APP_NAME
# No need to install gems
docker-compose exec web rails new --skip-bundle "$@"
#docker-compose exec web "$@" --skip-bundle

# No need to install gems
# - or if wanting to wait
#docker-compose run web rails new

echo "DONE"

sudo cp -a /var/lib/docker/volumes/rails_cli_rails_data/_data/$APP_NAME $OUTPUT_DIR/$APP_NAME
sudo chown -R $(id -un):$(id -gn) $OUTPUT_DIR/$APP_NAME
ls -al $OUTPUT_DIR/$APP_NAME
echo $OUTPUT_DIR/$APP_NAME
