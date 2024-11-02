pipeline {
    agent { label 'slave-fe' } // Chạy pipeline trên node slave-fe
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Albert333s/jenkins-project.git', branch: 'main'
            }
        }
        
        stage('Cài đặt Node.js') {
            steps {
                sh '''
                    apt-get update
                    apt-get install -y nodejs
                    apt-get install -y npm 
                '''
            }
        }
        
        stage('Build và chạy ứng dụng') {
            steps {
                sh '''
                    cd react-app
                    npm install
                    npm start
                '''
            }
        }
    }
}
