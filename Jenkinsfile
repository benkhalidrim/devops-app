pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/benkhalidrim/devops-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-webapp')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('simple-webapp').run('-d -p 80:80')
                }
            }
        }
    }
}

