#!/bin/bash

read -p "What is the app name? " ans

mix phx.new $ans --no-install --app $ans --database postgres --no-live --no-assets --no-html --no-dashboard --no-mailer --binary-id
