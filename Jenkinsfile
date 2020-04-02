pipeline{
    tools{
        jdk 'java1.8'
        maven 'maven'
    }
    agent none
    stages{
        stage("Checkout"){
            agent any
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
            }
        }
        stage("Compile"){
            agent any
            steps{
                sh 'mvn compile'
            }
        }
        stage("Test"){
            agent {
                label 'Linux-Slave2'
            }
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
            agent {
                label 'Linux-Slave'
            }
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'mvn package'
            }
        }
    }
    
}
