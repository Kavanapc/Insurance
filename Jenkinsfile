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
}
}


