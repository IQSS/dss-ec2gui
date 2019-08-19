# Use the Amazon Simple Storage Service (S3) Console to Store and Transfer Your Data

## Create a Bucket

40.	In the **AWS Management Console**, click **Services**, then click **S3** to open the console.
41.	Choose **Create bucket**.
42.	On the **Name and region page**, type a **name** for your bucket (awid, for example) and choose the **AWS Region** (US East (N. Virginia), for example) where you want the bucket to reside. Choose a Region close to you.
43.	(Optional) If you have already set up a bucket that has the same settings that you want to use for the new bucket that you want to create, you can set it up quickly by choosing **Copy settings from an existing bucket**, and then choosing the bucket whose settings you want to copy. The settings for the following bucket properties are copied: versioning, tags, and logging.
44.	Do one of the following:
    + If you copied settings from another bucket, choose **Create**. You're done, so skip the following steps.
    + If not, choose **Next**.
45.	On the **Configure options page**, for **Versioning**, select **Keep all versions of an object in the same bucket**. to enable object versioning for the bucket. 
46.	For **Server access logging**, select **Log requests for access to your bucket**. to enable server access logging on the bucket. Server access logging provides detailed records for the requests that are made to your bucket. 
47.	For **Tags**, you can use cost allocation bucket tags to annotate billing for your use of a bucket. Each tag is a key-value pair that represents a label that you assign to a bucket. To add a tag, enter a *Key* and a *Value*. Choose **Add another** to add another tag.
48.	For **Object-level logging**, select **Record object-level API activity by using CloudTrail for an additional cost** to enable object-level logging with CloudTrail.
49.	For **Default encryption**, select **Automatically encrypt objects when they are stored in S3** to enable default encryption for the bucket. 
50.	For **Object lock**, select **Permanently allow objects in this bucket to be locked** if you want to be able to lock objects in the bucket. Object lock requires that you enable versioning on the bucket.
51.	For **CloudWatch request metrics**, select **Monitor requests in your bucket for an additional cost**. to configure CloudWatch request metrics for the bucket.  
52.	Choose **Next**.
53.	On the **Set permissions page**, under **Block public access (bucket settings)**, we recommend that you do not change the default settings that are listed under **Block all public access**. 
54.	If you intend to use the bucket to store Amazon S3 server access logs, in the **Manage system permissions** list, choose **Grant Amazon S3 Log Delivery group write access to this bucket**. 
55.	Choose **Next**.
56.	On the **Review page**, verify the settings. If you want to change something, choose **Edit**. If your current settings are correct, choose **Create bucket**.

## Upload Your Dataset 

You can upload files or folders to S3 bucket by dragging and dropping. Drag and drop functionality is supported only for the **Chrome and Firefox browsers**.  
57.	In the **Bucket name** list, choose the **name** of the bucket that you want to upload your folders or files to.  
58.	In a window other than the console window, select the files and folders that you want to upload. Then **drag and drop** your selections into the console window that lists the objects in the destination bucket. The files you chose are listed in the Upload dialog box.  
59.	To immediately upload the listed files and folders without granting or removing permissions for specific users or setting public permissions for all the files that you're uploading, choose **Upload**.  
