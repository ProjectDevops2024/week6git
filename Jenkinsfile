pipeline {
agent none
  stages{
    stage('init'){
      steps{
        sh 'terraform init -upgrade -no-color'
        
      }
    }
    stage('validate'){
      sh 'terraform validate -no-color'
    }
  }
}
