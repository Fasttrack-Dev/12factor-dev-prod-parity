#!/usr/bin/env bash

aws cloudformation update-stack \
  --stack-name myteststack \
  --template-body file://environments.yml \
  --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
  --parameters ParameterKey=ProjectName,ParameterValue=mk999test
