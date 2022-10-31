pipeline {
    agent {
        label {
            label 'master'
            customWorkspace "${JENKINS_HOME}/${BUILD_NUMBER}/"
        }
    }
    environment {
        Go111MODULE='on'
    }
     stages {
         stage ('Clone Repo') {
             steps {
                 git 'https://github.com/kodekloudhub/go-webapp-sample.git'
             }
             
            }
         stage ('Run') {
             steps {
                 sh 'go test ./...'
             }
                 
             }
             stage ('Build') {
             steps {
             sh 'docker build -t adminturneddevops/go-webapp-sample .'
             }
         }
         stage ('Deploy') {
             steps {
                 sh "docker run -p 8090:8000 -d adminturneddevops/go-webapp-sample"
             }
         }
         }
     }
