# Launch an Amazon Deep Learning Amazon Machine Images (AMI) instance

12.	Log in your **AWS account**. This will go to the AWS Management Console.
13.	In the **AWS Management Console**, click on the **Services** menu, then click **EC2**.
14.	On the upper right corner, click the **region** button, select **US East (N. Virginia)**.
15.	Click **Launch Instance**.
16.	On the **Step 1: Choose an Amazon Machine Image (AMI) page**, scroll down to **Deep Learning AMI (Amazon Linux)**.  
Confirm that it is the **Amazon Linux** version, **not** the Ubuntu or Windows version. There are multiple versions, so select the highest version.
17.	For **Deep Learning AMI (Amazon Linux)**, click **Select**.  
The Deep Learning AMI is designed to provide a stable, secure, and high-performance execution environment for deep learning applications running on Amazon EC2. It includes popular deep learning frameworks, including MXNet, TensorFlow, PyTorch, Keras, Chainer, Caffe, Theano, and CNTK. 
18.	On **Step 2: Choose an Instance type page**, for **Filter by**, select **GPU instances**.
19.	Select **p2.xlarge**.
20.	Click **Next: Configure Instance Details**.
21.	On the **Step 3: Configure Instance Details page**, keep the default settings.
22.	Click **Next: Add Storage**.
23.	On the **Step 4: Add Storage**, keep the default storage settings.
24.	Click **Next: Add Tags**.
25.	On the **Step 5: Add Tags page**, click **Add Tag**, then:
    + For **Key**, type: Name
    + For **Value**, type: Deep Learning Development
26.	Click **Review and Launch**.
27.	On the **Step 7: Review Instance Launch page**, review your instance settings and click **Launch**.
28.	On **Select an existing key pair or create a new key pair** window, if applicable, select **Create a new key pair** from the dropdown menu. Assign a **key pair name** (for example, DeepL) and **download** the private key file in a secure and accessible location. Amazon EC2 gives you a PEM file. So, you would need to convert it to PPK files later for Windows SSH connectivity to the instance.  
29.	Click **Launch Instances**.
30.	The launch could fail if you choose regions other than US East (N. Virginia) at the first beginning. You could either change the region to US East (N. Virginia) and retry or launch it after you get an email saying that your account is now fully verified in that region. This verification will take several minutes.

