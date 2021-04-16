pipeline {
      agent any
      
      tools {
            maven "3.6.0"
      }
  stages {
    stage("Build") {
      steps {
        sh "mvn -version"
        sh " mvn -f complete/ clean install"
      }
    }
  }
  
  post {
    always {
      cleanWs ()
    }
  } 
}

  
