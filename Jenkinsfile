pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Alua'
        STUDENT_SURNAME = 'Makpyr'
        STUDENT_GROUP   = 'IT2-2306'
        STUDENT_ID      = '37566'
        IMAGE_NAME      = 'makpyr-alua-devops'
        CONTAINER_NAME  = 'makpyr-alua-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'chmod +x app/app.sh scripts/Makpyr_Alua_system.sh'
                sh 'ls -la'
            }
        }
        stage('Test') {
            steps {
                sh 'test -f Makpyr_Alua_info.txt'
                sh 'test -f Dockerfile'
                sh './scripts/Makpyr_Alua_system.sh'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
                sh 'docker run --name $CONTAINER_NAME -e STUDENT_NAME -e STUDENT_SURNAME -e STUDENT_GROUP -e STUDENT_ID $IMAGE_NAME'
                sh 'docker images | grep $IMAGE_NAME'
                sh 'docker ps -a | grep $CONTAINER_NAME'
            }
        }
    }
}
