pipeline {
    agent {
        label {
            label 'master'
        }
    }
     stages {
         stage ('Clone Repo') {
             steps {
                 git 'https://github.com/pkmisma/my-sample-app.git'
             }
            }
             stage ('Build') {
             steps {  
             sh 'docker build -t ismail/docker-image:"${BUILD_NUMBER}" .'
             }
         }
         stage ('Deploy') {
             steps {
                 sh 'docker run -p 8090:8000 -d ismail/docker-image:"${BUILD_NUMBER}"'
             }
         }
         }
     }
