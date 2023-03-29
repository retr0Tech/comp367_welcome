pipeline {
    agent any
    tools {
        maven 'mvn'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
                sh 'docker build -t retr0Tech/comp367-welcome-web:1.0 .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docket-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    sh 'docker push retr0Tech/comp367-welcome-web:1.0'
                }
            }
        }
    }
}