pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/SwethaAS-28/html-frontend.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t html-frontend .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f html-ui || true
                docker run -d -p 8080:80 --name html-ui html-frontend
                '''
            }
        }
    }
}
