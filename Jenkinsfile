pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/toncompte/devops-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('devops-app:latest')
                }
            }
        }
    }
}

