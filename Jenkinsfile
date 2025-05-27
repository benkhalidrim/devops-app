pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'devops-app:latest'
        CONTAINER_NAME = 'devops-container'
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-credentials', url: 'https://github.com/benkhalidrim/devops-app.git', branch: 'master'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🛠️ Construction de l\'image Docker...'
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Run Tests') {
            steps {
                echo '🚀 Exécution des tests (placeholder)...'
                sh 'echo "Tests réussis"'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh """
                        if [ \$(docker ps -q -f name=$CONTAINER_NAME) ]; then
                            docker stop $CONTAINER_NAME
                            docker rm $CONTAINER_NAME
                        fi
                        docker run -d --name $CONTAINER_NAME -p 5000:5000 $DOCKER_IMAGE
                    """
                }
            }
        }
    }
}
