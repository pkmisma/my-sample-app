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
             sh 'cd /var/lib/jenkins/workspace/CI-CD'
             sh 'sudo docker build -t ismail/docker-image:"${BUILD_NUMBER}" .'
             }
         }
         stage ('Deploy-stage') {
             steps {
                 sh 'sudo docker run -p 80:80 -d ismail/docker-image:"${BUILD_NUMBER}"'
             }
         }
         }
     }
