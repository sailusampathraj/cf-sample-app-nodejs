pipeline{
    agent any
    environment {
        NODE_PATH = "/"
        NODE_LOG_LEVEL = "fatal"
    }
    stages {
        stage('CleanWorkspace') {
            steps {
                cleanWs()
            }
        } 
      
        stage ('Build') {
            /* steps {
                sh 'docker version'
                sh 'docker build -t cfsampleapp:v1 .'
                sh 'docker run -p 3001:3000 -d cfsampleapp:v1'
            } */
        
            steps {
                nodejs(nodeJSInstallationName: 'nodejs17.5.0'){
                    sh 'npm install'
                   // sh 'npm run start'
                  withSonarQubeEnv('sonar') {
                   sh 'npm install sonar-scanner'
                   sh 'npm run sonar' 
                } 
             } 
        } 
       }  
     }
}
