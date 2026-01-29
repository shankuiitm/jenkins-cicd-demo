pipeline {
    agent { label 'linux-agent' }

    stages {
        stage('Build') {
            steps {
                sh '''
                  echo "Building application..."
                  chmod +x app.sh
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                  chmod +x test.sh
                  ./test.sh
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                  chmod +x deploy.sh
                  ./deploy.sh
                '''
            }
        }
    }

    post {
        success {
            echo '✅ CI/CD Pipeline completed successfully'
        }
        failure {
            echo '❌ CI/CD Pipeline failed'
        }
    }
}
