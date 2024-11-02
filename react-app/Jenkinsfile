pipeline {
    agent { label 'frontend' }
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/Albert333s/jenkins-project.git', branch: 'main'
            }
        }
        
        stage('Check Node') {
            steps {
                sh 'echo "Running on $(hostname)"'
            }
        }

        stage('Build ứng dụng') {
            steps {
                sh '''
                    cd react-app
                    npm install
                    npm run build
                '''
            }
        }
    }
}
