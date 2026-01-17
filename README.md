Anime Web -
http://13.201.75.68/
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



📸 screenshots/Trivy_Failed_Security_Scan.png

Final (Passing)
•  Secure Terraform configuration
•  Trivy reports 0 issues
•  Jenkins pipeline passes



📸 screenshots/Trivy_Passed_Security_Scan.png

Screenshots

screenshots/Jenkins_Pipeline_Success.png

screenshots/App_Running_On_Public_IP.png

screenshots/AWS_EC2_Instance.png

screenshots/Terraform_EC2_Creation.png

screenshots/AWS_CLI_Configuration.png

Outcome

Secure CI/CD pipeline with automated security validation and successful AWS deployment.