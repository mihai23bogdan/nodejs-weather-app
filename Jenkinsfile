pipeline {
    agent any
        environment {
        dockerimage = "nodeappp"
        dockercontainer = "node.jss"
    }
    stages {
      stage('Git Clone') {
        steps{
          git url:'https://github.com/mihai23bogdan/nodejs-weather-app', branch: 'master'
        }
    }
    stage ('build') {
           steps {
            sh "docker build -t ${dockerimage}:${BUILD_NUMBER} ."
           }
        } 
     stage ('run') {
           steps { 
               sh "docker run -d -p 3000:3000 --name ${dockercontainer}${BUILD_NUMBER} ${dockerimage}:${BUILD_NUMBER}"
           }
        }   
    }
}  
