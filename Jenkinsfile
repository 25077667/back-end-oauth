pipeline {
    agent any
    
    environment {
        REGISTRY_AUTH = credentials("dc802fb9-002b-45ca-888e-05f04a995102")
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker build -t backend-exam ."
            }
        }
        stage('Login') {
            steps {
                sh "docker login -u=$REGISTRY_AUTH_USR -p=$REGISTRY_AUTH_PSW"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "docker push zxc25077667/backend-api"
            }
        }
    }
}