#!/usr/bin/env bash

set -e

EXTENSIONS="yzhang.markdown-all-in-one eamodio.gitlens 4ops.terraform iliazeus.vscode-ansi ms-kubernetes-tools.vscode-kubernetes-tools Tim-Koehler.helm-intellisense hashicorp.terraform fabiospampinato.vscode-todo-plus redhat.vscode-yaml"

INSTALLED=$(code --list-extensions)

INSTALL=(`echo ${EXTENSIONS[@]} ${INSTALLED[@]} | tr ' ' '\n' | sort | uniq -u `)

for ext in $INSTALL
do 
    code --install-extension $ext --force
done
