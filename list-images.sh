#!/bin/bash
aws ec2 describe-images --owners 309956199498 --query 'sort_by(Images, &CreationDate)[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-7.?*GA*" --region eu-central-1 --output table
