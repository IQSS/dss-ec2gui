# Grant an EC2 Instance Access to S3 Bucket

## Create an Identity and Access Management (IAM) Role

31.	Open the **IAM console** at `https://console.aws.amazon.com/iam/`. 
32.	In the navigation pane, choose **Roles, Create role**. 
33.	On the **Select role type page**, choose **EC2** and the **EC2** use case. Choose **Next: Permissions**. 
34.	On the **Attach permissions policy page**, select an **AWS managed policy** that grants your instances access to the resources that they need. In this case, choose **full access to all buckets via management console**.
35.	On the **Review page**, type a **name** for the role (for example, s3access) and choose **Create role**. 

## Attach an IAM Role to an Instance

To attach an IAM role to an instance that has no role, the instance can be in the stopped or running state.
36.	Open the **Amazon EC2 console**.  
37.	In the navigation pane, choose **Instances**.  
38.	Select the instance, choose **Actions, Instance Settings, Attach/Replace IAM role**.   
39.	Select the IAM role to attach to your instance and choose **Apply**.   
