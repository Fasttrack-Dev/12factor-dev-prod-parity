#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Provide environment type as parameter: dev / staging / prod"
  exit 0
fi

project_name="mk999"
stack_name="$project_name-$1-stack"

echo "Building $stack_name..."
aws cloudformation update-stack \
  --stack-name "$stack_name" \
  --template-body file://environments.yml \
  --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
  --parameters \
      ParameterKey=ProjectName,ParameterValue="$project_name" \
      ParameterKey=EnvironmentType,ParameterValue="$1"
