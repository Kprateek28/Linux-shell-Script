#! /bin/bash


#########################
# Author: Kumar Prateek
#
# version : 1
# script to report the AWS resource usage
############################



set +x

# Listing s3 bucket

echo "Print list of s3 buckets"
aws s3 list


# List EC2 instances
aws ec2 describe-instances

# List Lambda function
aws lambda list-functions

#list iam user

aws iam list-users



