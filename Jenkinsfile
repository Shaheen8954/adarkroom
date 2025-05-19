pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello everyone'
            }
        }
         stage('cleanwork space') {
            steps {
                cleanWs()
            }
        }
         stage('code clone') {
            steps {
                checkout scm
            }
        }
         stage('run container') {
            steps {
               sh "docker compose down"
               sh "docker compose up -d"
            }
        }
    }
}

