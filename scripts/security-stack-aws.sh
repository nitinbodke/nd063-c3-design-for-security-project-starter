# Create stacks for project
aws cloudformation create-stack --stack-name c3-s3 --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-s3.yml
aws cloudformation create-stack --stack-name c3-vpc --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-vpc.yml
# create key-pair to use with stack
aws ec2 create-key-pair --key-name c3-key-pair --query 'KeyMaterial' --output text > c3-key-pair.pem
# Application stack
#aws cloudformation create-stack --stack-name c3-app --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=c3-key-pair
#An error occurred (InsufficientCapabilitiesException) when calling the CreateStack operation: Requires capabilities : [CAPABILITY_IAM]
aws cloudformation create-stack --stack-name c3-app --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=c3-key-pair --capabilities  CAPABILITY_IAM


# upload files to respective buckets
aws s3 cp /Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/free_recipe.txt s3://cand-c3-free-recipes-745926752740
aws s3 cp /Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/secret_recipe.txt s3://cand-c3-secret-recipes-745926752740

# Test application
curl http://c1-web-service-alb-1463666443.us-east-1.elb.amazonaws.com/free_recipe


# Enable monitoring
# AWS config
# Prerequisite for AWS config
# Bucket to receive configuration
aws s3 mb cand-c3-config-123456789012
# Create SNS topic to for config change notifications
aws sns create-topic --name cand-c3-config-notice
# subscribe to topic
# TODO replace email
aws sns subscribe --topic arn:aws:sns:us-east-1:745926752740:cand-c3-config-notice --protocol email --notification-endpoint nitin.bodke@gmail.com
# Confirm email
# TODO find command line alternative
# Grant AWS Config to
# 1. access S3 bucket
# 2. access SNS topic
# Via console
# Ref: https://docs.aws.amazon.com/config/latest/developerguide/gs-cli-prereq.html
# Role: AWSServiceRoleForConfig
#https://console.aws.amazon.com/config/home?region=us-east-1&awsc-custsat-override=promptUser#/first-run/configuration
# How to give permissions to Role?
# Currently allowed to create bucket on my behalf
# skipped SNS notification part
#aws configservice subscribe --s3-bucket cand-c3-config-notice --sns-topic arn:aws:sns:us-east-1:000000000000:cand-c3-config-notice --iam-role arn:aws:iam::000000000000:role/awsConfigRole

# TODO: cmd equivalent
# Enable Inspector Scan
# Enabled from console

# Enable security hub
# No LocalStack endpoint for service "securityhub"
aws securityhub enable-security-hub --enable-default-standards

# Enable AWS Inspector scan
aws guardduty create-detector --enable
# DetectorId: 2ebad68d89d1c8bcd1e516ce9e59107e


# Attack Simulation
ssh -i ~/AppControl/secrets/c3-key-pair.pem ubuntu@54.146.100.149
# Kill all hydra processes
pkill -f hydra


# Hardening

# Update stack
# Update stack to Apply network controls to application server
aws cloudformation update-stack --region us-east-1 --stack-name c3-app --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=c3-key-pair --capabilities  CAPABILITY_IAM
# Update stack to Update least privilege access to S3
# export s3 ARN for S3BucketRecipesFree
aws cloudformation update-stack --region us-east-1 --stack-name c3-s3 --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-s3.yml
# Update app stack
aws cloudformation update-stack --region us-east-1 --stack-name c3-app --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-app.yml --parameters ParameterKey=KeyPair,ParameterValue=c3-key-pair --capabilities  CAPABILITY_IAM

# Apply default server side encryption to S3 bucket
aws cloudformation update-stack --region us-east-1 --stack-name c3-s3 --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-s3.yml

# Apply policy to
# 1. enforce encryption in transit for S3 buckets
# 2. block public access by default,
# 3. block access control list changes that grant public read permissions to resources
# Added S3 Bucket policies for both buckets
# S3BucketPolicyRecipesFree
# S3BucketPolicyRecipesSecret
aws cloudformation update-stack --region us-east-1 --stack-name c3-s3 --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-s3.yml  --capabilities  CAPABILITY_IAM

# Ref: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#aws-properties-s3-bucket--examples
# Log access requests for a specific S3 bucket
aws cloudformation update-stack --region us-east-1 --stack-name c3-s3 --template-body file:///Users/nb732834/lab/udacity/cloud-arch-nd/3-design-for-security/starter/c3-s3.yml

# Enables EBS encryption by default for your account in the current Region.
aws ec2 --region us-east-1 enable-ebs-encryption-by-default