#!/usr/bin/env bash
commit="Automatic deploy"
[[ "${1}" ]] && commit="${1}"

git add .
git commit -m "${commit}"
git push origin master
