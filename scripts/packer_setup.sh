#!/bin/bash

GOOS=$(shell go env GOOS)
GOARCH=$(shell go env GOARCH)
GOPATH=$(shell go env GOPATH)

# Get packer
go get github.com/hashicorp/packer
cp -f ${GOPATH}/bin/packer ${HOME}/bin/packer

# Unlink existing packer to cracklib-packer in RedHat-basd Linux distros
sudo unlink /usr/sbin/packer
source ~/.bashrc

# Verify installation
packer version

