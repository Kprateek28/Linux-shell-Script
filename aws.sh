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
echo "Print list of Ec2 instance"
aws ec2 describe-instances

# List Lambda function
echo "Print list of lambda function"
aws lambda list-functions

#list iam user
echo "Print list of IAM Users"
aws iam list-users


