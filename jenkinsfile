pipeline {
    agent any

    tools {
        jdk 'jdk17'
        maven 'maven'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo Deploying Job Portal Application'
            }
        }
    }
}
