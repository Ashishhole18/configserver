pipeline {
    agent {
        label 'tempo'
    }

    stages {
        stage('GIT CLONE') {
            step {
                git 'https://github.com/Ashishhole18/configserver'
            }
        }
        stage('Compile-Package') {
            step {
            sh 'mvn clean package'
            }
        }
        stage('Dockerized app') {
            step {
                sh 'docker build -t config-server .'
            }
        }
        stage('Deploy') {
            step {
                sh 'docker run -d -p 8088:8088 config-server'
            }
        }

    }

}