pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-webapp')
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    docker.image('simple-webapp').run('-d -p 8080:80')
                }
            }
        }
    }
}
