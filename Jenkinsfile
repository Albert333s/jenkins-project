pipeline {
    agent { label 'slave-fe' } // Chạy pipeline trên node slave-fe
    stages {
        stage('Setup Node.js') {
            steps {
                sh '''
                    # Kiểm tra xem npm đã có chưa, nếu chưa có thì cài đặt
                    if ! command -v npm &> /dev/null; then
                        curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
                        apt-get install -y nodejs
                    fi
                '''
            }
        }
        
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Albert333s/jenkins-project.git', branch: 'main'
            }
        }
        
        stage('Build and Run Application') {
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
