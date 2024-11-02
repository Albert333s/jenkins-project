pipeline {
    agent { label 'slave-fe' } // Chạy pipeline trên node slave-fe
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Albert333s/jenkins-project.git', branch: 'main'
            }
        }
        
        stage('Build and Run Docker Container') {
            steps {
                // Build Docker image và chạy container trực tiếp trên node slave-fe
                sh '''
                    pwd
                    cd react-app
                    docker build -t react-app:latest .
                    docker stop react-app || true
                    docker rm react-app || true
                    docker run -d -p 3000:3000 --name react-app react-app:latest
                '''
            }
        }
    }
}
