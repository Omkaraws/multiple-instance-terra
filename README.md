# multiple-instance-terra
multiple-instance-using-terra
mkdir ~/terraform-count-ec2-demo
cd ~/terraform-count-ec2-demo
1.Next open the editor you wish to use and copy-paste the below configuration in the main.tf inside the ~/terraform-count-ec2-demo directory. This main.tf file is used to define all the resources you wish to launch or manage with terraform. Below are some high level walkthroughs of the code:
count = 4 signifies that Four resources of the same kind will be provisioned.
Amazon machine image (ami) - Allows you to launch instances containing all the required softwares and operating system.
tags - Tags allow you to define the specific resource with a label, which is further beneficial for cost calculations.
aws_instance - Creates the EC2 instances in AWS console.
count.index - Allows you to define the name according to index. For example if the value of count is 4 then index starts with ( 0 to 3 )
Lookup retrieves the value of a single element from a map, given its key. If you don't declare any key then the default value is considered.


2. Now create another file under the ~/terraform-count-ec2-demo directory and name it as vars.tf. This file will contain all the variables that you referred to in the main.tf configuration file.
Variables contain different data types such as strings, boolean, array or even list.


3. Create one more file called provider.tf inside ~/terraform-count-ec2-demo directory and again copy-paste the code below to the provider.tf file. The provider.tf file allows you to define the provider that will help you connect to the correct cloud services.
The below code will deploy the resources in the 'us-east-2' region.
'aws' is the name of the provider.


4. Create one last file inside the ~/terraform-count-ec2-demo directory and name it terraform.tfvars. Copy and paste the below code in the terraform.tfvars. The terraform.tfvars file will contain the values that Terraform uses to replace the variable references inside of a main configuration file


5. cd ~\terraform-count-ec2-demo

Next run the terraform init command in the same directory. The terraform init command initializes the plugins and providers which are required to work with AWS resources that need to be provisioned. After the command runs successfully you will see a message displayed on Terminal stating: Terraform has been successfully initialized.
6. terraform init

Now run the terraform plan command. Terraform plan command gives you an overview of which resources will be provisioned in your infrastructure.
7. terraform plan

You are about to launch an instance shortly. To launch instances in the AWS console, finally run the terraform apply command as shown below. Terraform apply command reads all the configuration files such as main.tf, variables.tf, terraform.tfvars and then using the provider in provider.tf file it connects to the AWS account and launches the ec2 instances.
8. terraform apply
terraform apply
