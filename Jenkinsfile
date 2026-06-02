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

        stage('Deploy to CloudHub') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'anypoint-creds',
                        usernameVariable: 'ANYPOINT_USER',
                        passwordVariable: 'ANYPOINT_PASSWORD'
                    )
                ]) {

                    bat '''
                    mvn mule:deploy ^
                    -Danypoint.username=%ANYPOINT_USER% ^
                    -Danypoint.password=%ANYPOINT_PASSWORD%
                    '''
                }
            }
        }
    }
}
