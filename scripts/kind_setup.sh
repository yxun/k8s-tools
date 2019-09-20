#!/bin/bash
GOPATH=$(shell go env GOPATH)

# Get kind
GO111MODULE="on" go get sigs.k8s.io/kind@v0.5.1
cp -f ${GOPATH}/bin/kind ${HOME}/bin/kind

# Create cluster
kind create cluster

# Verify installation
export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
kubectl cluster-info

# Delete cluster
# kind delete cluster && unset KUBECONFIG


