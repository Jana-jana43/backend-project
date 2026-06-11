pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh '''
                rm -rf /var/www/winngoogroup/public/*
                cp -r * /var/www/winngoogroup/public/
                '''
            }
        }
    }
}
