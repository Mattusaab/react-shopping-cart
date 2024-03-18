pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
            
        }
    }
}    
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
