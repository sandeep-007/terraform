AWS EC2 Instance Creation with Terraform
Description
This is a simple project that demonstrates how to create an EC2 instance on AWS using Terraform.

Prerequisites:
1. An AWS account.
2. AWS Access Keys:
   AWS_ACCESS_KEY=<Your_Access_Key>
   AWS_SECRET_KEY=<Your_Secret_Key>

Steps:
1. Set AWS Credentials
   Launch Command Prompt (cmd) in your project directory.
   Set the AWS credentials by running the following commands:
   **SET AWS_ACCESS_KEY=<Your_Access_Key>
   SET AWS_SECRET_KEY=<Your_Secret_Key>**

   **echo %AWS_ACCESS_KEY%
   echo %AWS_SECRET_KEY%**

2. Initialize Terraform
   Initialize Terraform by running the following command:
   **terraform init**
   (This command will download the necessary Terraform provider and initialize your project.)

3. Review the Plan
   Review the actions that Terraform will take to create the EC2 instance with:
   **terraform plan**
   (This will show you the execution plan without making any changes.)

4. Apply the Terraform Configuration
   Run the following command to create the EC2 instance:
   **terraform apply**
   (Terraform will prompt you to confirm the action. Type yes to proceed.)

5. Verify the EC2 Instance
   After applying the Terraform configuration, go to the AWS EC2 Console.
   You should see the newly created EC2 instance listed there.
