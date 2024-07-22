Hobby Pictures Project

This project uses an AWS S3 bucket to store and manage pictures related to my hobbies. The bucket is managed using Terraform for infrastructure as code (IaC) provisioning. This allows for scalable and secure storage of images, accessible via a unique bucket URL. Each hobby category can have its own folder structure within the bucket, ensuring organization and easy retrieval of images. This setup provides a reliable platform for storing and sharing my hobby-related pictures.

Technologies Used:

AWS S3: Secure and scalable object storage for storing images.
Terraform: Infrastructure as code tool for managing and provisioning the S3 bucket.

How to Use:

Clone the repository.
Install Terraform and configure AWS credentials.
Modify the Terraform configuration (main.tf) to customize bucket settings.
Run terraform init, terraform plan, and terraform apply to provision the S3 bucket.
Upload hobby pictures to the designated folders in the S3 bucket using AWS CLI or console.
Access and share images using the generated bucket URL.
Feel free to explore and contribute to enhance this project!
