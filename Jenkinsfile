pipeline {
    agent any
    tools {
        maven 'mvn' // Name of the Maven tool as defined in Jenkins
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}