Pipeline {
 agent any
 tools {
   maven 'MAVEN_HOME'
      }
 Stages {
   stage ('checkout the souce code') {
     steps{
       git branch: 'master',url:"https://github.com/Kavanapc/Insurance.git"
          }
      }
}
}


