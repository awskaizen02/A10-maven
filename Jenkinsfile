pipeline {
    agent any
parameters {choice(name: 'BRANCH', choices: ['jar', 'war', 'master'], description: 'Pick something')}    
triggers{ cron('H/05 * * * *') }
    stages {
        stage('git checkout') {
            steps {
                git branch: "${params.BRANCH}", url: 'https://github.com/awskaizen02/A10-maven.git'
            }
        }
        stage('validate the code'){
        steps{sh 'mvn validate'}
        }
        stage('test the code'){
        steps{sh 'mvn test'}
        }
        stage('complie the code'){
        steps{sh 'mvn compile'}
        }
        stage('package the code'){
        steps{sh 'mvn package'}
        }
        stage('build the code'){
        steps{sh 'mvn install'}
        }
        
    }
}
