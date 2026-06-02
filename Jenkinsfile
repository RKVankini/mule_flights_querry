pipeline {

    agent any

    environment {

        ANYPOINT_USER = credentials('anypoint-creds')

    }

    stages {

        stage('Checkout') {

            steps {

                git branch: 'main',
                    url: 'https://github.com/RKVankini/mule_flights_querry.git'
            }
        }

        stage('Verify JAR') {

            steps {

                bat 'dir target'

            }
        }

        stage('Deploy to CloudHub') {

            steps {

                sh '''
                echo "Deploying Mule Application"

                curl -X POST \
                https://anypoint.mulesoft.com/cloudhub/api/v2/applications \
                -u ${ANYPOINT_USER_USR}:${ANYPOINT_USER_PSW}
                '''
            }
        }
    }
}
