Anime Web
Project Overview  for a React-based Anime web application.
The pipeline integrates security scanning, containerization, infrastructure provisioning, and cloud deployment.

Security issues are intentionally introduced, detected using Trivy.

Architecture

•	React Anime Web Application
•	Docker image creation
•	Jenkins CI/CD Pipeline
•	Trivy security scan 
•	Terraform for AWS infrastructure
•	Deployment on AWS EC2


Cloud Provider

Amazon Web Services (AWS)
•	EC2
•	VPC
•	Security Groups

Tools & Technologies
•  React.js
•  Jenkins
•  Docker
•  Terraform
•  Trivy
•  AWS
•  GitHub



Before & After Security Report
Initial (Failing)
•	Insecure Terraform configuration
•	Trivy detects misconfigurations
•	Jenkins pipeline fails



![Travy failed security config](https://github.com/user-attachments/assets/f292cdd2-2b48-4470-8907-aa2cad12a3f0)


Final (Passing)
•  Secure Terraform configuration
•  Trivy reports 0 issues
•  Jenkins pipeline passes



![Successful creation](https://github.com/user-attachments/assets/9b581623-a085-4515-9d34-f5e71757f496)



Screenshots

![App on Public Ip](https://github.com/user-attachments/assets/e5240d6f-edb5-45aa-bb6f-942e8efa24e4)

![AWS console in cmd](https://github.com/user-attachments/assets/42995b26-8322-4eba-8356-5a146e085cc9)

![Running Terraform to intialize AWS](https://github.com/user-attachments/assets/5ffc3e7c-af61-4ce1-9761-383368fbcb7a)


![Succesfully created AWS EC2](https://github.com/user-attachments/assets/e344476b-e405-4e4c-8e9c-ce15ccbb5c69)
![AWS EC2 Instance](https://github.com/user-attachments/assets/2674d739-e51f-46e0-95da-c6c57ecd01ef)

Outcome

Secure CI/CD pipeline with automated security validation and successful AWS deployment.
