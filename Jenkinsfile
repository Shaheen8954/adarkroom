pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello everyone'
            }
        }
        //  stage('cleanwork space') {
        //     steps {
        //         sh "cleanWS"
        //     }
        // }
         stage('code clone') {
            steps {
                git url: "https://github.com/Shaheen8954/adarkroom.git", branch: "main"
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

