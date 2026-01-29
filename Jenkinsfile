pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t frontend-html .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f frontend-html || true
                docker run -d -p 80:80 --name frontend-html frontend-html
                '''
            }
        }
    }
}

