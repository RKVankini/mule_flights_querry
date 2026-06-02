pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/RKVankini/mule_flights_querry.git'
            }
        }

        stage('Build Mule App') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Verify Artifact') {
            steps {
                bat 'dir target'
            }
        }

        stage('Deploy to CloudHub') {
            steps {
                bat 'mvn mule:deploy'
            }
        }
    }
}
