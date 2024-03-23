pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
            
        }
    
    
    stage('Build Docker Image') {
      steps{
        script {
          sh 'docker build -t daara13/helloworld .'
        }
      }
    }
}

    stage('Push Docker Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')

          }
        }
      }
    }
}
