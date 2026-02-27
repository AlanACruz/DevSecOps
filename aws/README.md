# AWS

## ECR Commands
```
aws ecr get-login-password \
    --region <region> \
| docker login \
    --username AWS \
    --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com

docker tag

docker push
```

## S3 Commands
```
aws s3 cp myDir s3://mybucket/ --recursive --exclude "*.jpg"
```