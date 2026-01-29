pipeline {
    agent any

    stages {
        stage('Clone Repo') {
    steps {
        git url: 'https://github.com/SwethaAS28/html-frontend.git', credentialsId: 'github-pat', branch: 'main'
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
