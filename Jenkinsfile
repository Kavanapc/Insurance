pipeline{
 agent any
 tools{
   maven 'MAVEN_HOME'
      }
 stages{
   stage('checkout the souce code'){
     steps{
       git branch: 'master',url:"https://github.com/Kavanapc/Insurance.git"
          }
        }
   stage('package the application'){
     steps{
       sh'mvn clean package'
          }
         }
    stage('generate HTML publisher Test Reports'){
      steps{
         publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: '/var/lib/jenkins/workspace/Insurance_project/target/surefire-reports', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: '', useWrapperFileDirectly: true])
            } 
         }
   stage('build docker image using docker file'){
     steps{
       sh'docker build -t kavanapc/insurance_project .'
          }
        }
   stage('docker login'){
     steps{
     withCredentials([usernamePassword(credentialsId: 'Dockerlogin', passwordVariable: 'password', usernameVariable: 'docker')]) {
    sh "docker login -u ${env.docker} -p ${env.password}"
}
}
}
   stage('pushing docker image'){
     steps{
       sh 'docker push kavanapc/insurance_project:latest'
           }
    }
}
}

