pipeline {
      environemnt {
            JAVA_TOOLS_OPTIONS = "-Duser.home=/home/jenkins"
         }
      
//      agent any
      agent {
            Dockerfile {
                  label "docker"
                  args "-v /tmp/mvn:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2"
            }
      }
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

  
