pipeline {
    
    environment {
        dockerimagename = "sanjay30cool/app:1.0"
        dockerimage = ""
    }

agent any

stages {

    stage('Checkout Source') {
        steps {
            git 'https://github.com/sanjay30cool/App.git'
        }
    }

    stage('Build Image') {
        steps {
            script {
                dockerImage = docker.build dockerimagename
            }
        }
    }

    stage('Pushing Image') {
        environment {
            registryCredential = 'dockerhublogin'
        }
    steps{
        script{
            docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                dockerImage.push("latest")
            }
        }
    }    
    }
}