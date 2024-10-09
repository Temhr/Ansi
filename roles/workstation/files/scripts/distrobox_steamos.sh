#!/bin/bash

mkdir /home/temhr/containers/steamos

distrobox create --home /home/temhr/containers/steamos --name steamos --image ghcr.io/linuxserver/steamos:latest --hostname steamos

printf '\n'

distrobox enter steamos
