pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'devops-app:latest'
        CONTAINER_NAME = 'devops-container'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/benkhalidrim/devops-app.git',
                    branch: 'master',
                    credentialsId: 'github-credentials'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🛠️ Construction de l\'image Docker...'
                sh 'docker build -t devops-app .'
            }
        }

        stage('Run Container') {
            steps {
                echo '🚀 Lancement du conteneur...'
                sh 'docker run -d -p 5000:5000 devops-app'
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Run Tests') {
            steps {
                // Ajoute ici les tests de ton app, par exemple pytest ou curl /status
                sh 'echo "Tests réussis (placeholder)"'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Stoppe le conteneur s’il tourne déjà
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
