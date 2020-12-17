#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Provide environment type as parameter: dev / staging / prod"
  exit 0
fi

project_name="mk999"
stack_name="$project_name-$1-stack"

echo "Destroying $stack_name..."
aws cloudformation delete-stack --stack-name "$stack_name"
