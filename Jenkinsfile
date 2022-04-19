pipeline {
    agent any
        environment {
        dockerimage = "nodeappp"
        dockercontainer = "node.jss"
    }
       parameters {
          string(name: 'PORT', defaultValue: '', description: 'Port number')
          }
    stages {
      stage('Git Clone') {
        steps{
          git url:'https://github.com/mihai23bogdan/node-webapp1', branch: 'master'
        }
    }
    stage ('build') {
           steps {
            sh "docker build -t ${dockerimage}:${BUILD_NUMBER} ."
           }
        } 
     stage ('run') {
           steps { 
               sh "docker run -d -p ${params.PORT}:3000 --name ${dockercontainer}${BUILD_NUMBER} ${dockerimage}:${BUILD_NUMBER}"
           }
        }   
    }
}  
