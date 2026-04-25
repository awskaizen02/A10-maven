pipeline {
    agent {label 'agent01'}
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
    }
}
