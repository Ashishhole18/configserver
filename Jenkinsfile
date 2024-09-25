pipeline {
    agent {
        label 'tempo'
    }

    stages {
        stage('GIT CLONE') {
            steps {
                git 'https://github.com/Ashishhole18/configserver'
            }
        }
        stage('Compile-Package') {
            steps {
            sh 'mvn clean package'
            }
        }
        stage('Dockerized app') {
            steps {
                sh 'docker build -t config-server .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8088:8088 config-server'
            }
        }

    }

}