pipeline {
    agent any

    environment {
        IMAGE_NAME = "winngoo-group"
        CONTAINER_NAME = "winngoo-group"
    }

    stages {

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t ${IMAGE_NAME}:latest .
                '''
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop ${CONTAINER_NAME} || true
                docker rm ${CONTAINER_NAME} || true
                '''
            }
        }

        stage('Run New Container') {
            steps {
                sh '''
                docker run -d \
                --name ${CONTAINER_NAME} \
                --restart unless-stopped \
                -p 8080:80 \
                ${IMAGE_NAME}:latest
                '''
            }
        }
    }
}
