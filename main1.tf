pipeline {
    agent { label 'OPENJDK-11-JDk'}
    stages {
        stage('clone'){
            steps{
                git url: ' https://github.com/longflewtinku/jenkins-1-.git',
                    branch: 'main'
            }
        }
        stage('terraform'){
            steps{
                sh """terraform init
                      terraform apply -auto-approve"""
            }
        }
    }
}