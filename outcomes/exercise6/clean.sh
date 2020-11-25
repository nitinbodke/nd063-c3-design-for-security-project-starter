# https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-disable.html
aws securityhub disable-security-hub

# Disable Guard Duty
# https://awscli.amazonaws.com/v2/documentation/api/latest/reference/guardduty/delete-detector.html
aws guardduty delete-detector --detector-id 2ebad68d89d1c8bcd1e516ce9e59107e

# bucket cleanup
aws s3 rm s3://cand-c3-free-recipes-745926752740 --recursive
aws s3 rm s3://cand-c3-secret-recipes-745926752740 --recursive
aws s3 rm s3://cand-c3-vpc-flow-logs-745926752740 --recursive
aws s3 rm s3://cand-c3-primary-vpc-flow-logs-745926752740 --recursive
aws s3 rm s3://cand-c3-default-vpc-flow-logs-745926752740 --recursive
aws s3 rm s3://c3-s3-loggingbucket-ldqmy95xe91d --recursive

# delete stacks
aws cloudformation delete-stack --stack-name c3-app
aws cloudformation delete-stack --stack-name c3-vpc
aws cloudformation delete-stack --stack-name c3-s3

# delete key-pair
aws ec2 delete-key-pair --key-name c3-key-pair