#!/bin/bash

podman run --name $1 -p 5432:5432 -e POSTGRES_USER=backend_stuff -e POSTGRES_PASSWORD=backend_stuff -d postgres
