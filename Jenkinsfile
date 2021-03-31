pipeline {
  agent any 
  stages {
    stage('Build') {
      steps {
        sh "mvn compile"
      }
    }  
    stage('Test') {
      steps {
        sh "mvn test"
      }
     post {
      always {
        junit '**/TEST*.xml'
      }
     }
  }
    
    stage('newman') {
            steps {
               	sh 'newman run postman/collection.json --environment postman/environment.json --reporters junit'
            }
            post {
                always {
                    junit '**/*xml'
                }
            }
        }
       
        }	
 }

