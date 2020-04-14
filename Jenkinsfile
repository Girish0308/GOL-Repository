pipeline{
    tools{
        jdk 'java1.8'
        maven 'maven3.6.3'
    }
    agent none
    stages{
        stage("Compile"){
            agent any
            steps{
                sh 'mvn compile'
            }
        }
        stage("Test"){
            agent any
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'mvn test'
            }
            post{
                always{
                    junit 'gameoflife-web/target/surefire-reports/*.xml'
                }
            }
        }
        stage("Package"){
            agent any
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'mvn package'
            }
        }
    }
    
}
