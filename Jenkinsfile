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
                    ls
                    cd react-app
                    ls
                    npm install
                    npm start
                '''
            }
        }
    }
}
