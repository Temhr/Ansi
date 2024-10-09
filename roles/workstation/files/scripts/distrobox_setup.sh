#!/bin/bash

mkdir /home/temhr/containers/steam

distrobox create --home /home/temhr/containers/steam --name steamos --image ghcr.io/linuxserver/steamos:latest --hostname steamos

distrobox enter steamos

distrobox-export --app steam
