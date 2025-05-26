pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                // Cloner le dépôt avec le bon credentialsId
                git url: 'https://github.com/benkhalidrim/devops-app.git',
                    branch: 'master',
                    credentialsId: '9b9fa598-f025-4679-b0e4-7cab7e70c0bf'
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
            }
        }
    }
}
