pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SUDHIRsaa/Anime-web-main'
            }
        }

        stage('Terraform Security Scan (Trivy)') {
            steps {
                bat 'trivy config terraform/'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'cd terraform && terraform init'
                bat 'cd terraform && terraform plan -var="key_name=anime-key"'
            }
        }
    }
}
