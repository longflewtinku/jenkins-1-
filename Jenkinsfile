pipeline {
    agent { label "OPENJDK-11-JDK"}
    stages {
        stage('clone'){
            steps{
                git url: 'https://github.com/longflewtinku/jenkins-1-.git',
                    branch: 'main'
            }
        }
        stage('terraform'){
            steps{
                sh "terraform init"
                sh "terraform apply -auto-approve"
            }
        }
    }
}