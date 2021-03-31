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
               	sh 'newman run Liqaa/collection.json --environment Liqaa/environment.json --reporters junit'
            }
            post {
                always {
                    junit 'newman/*.xml'
                }
            }
        }
       
        }	
 }
