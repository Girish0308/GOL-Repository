pipeline{
    tools{
        jdk 'java1.8'
        maven 'maven3.6.3'
    }
    agent none
    stages{
        stage("Compile-Job Master"){
            agent any
            steps{
                sh 'mvn compile'
            }
        }
        stage("Test-Job Master"){
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
        stage("Package-Job Linux Slave"){
            agent {
                label 'linux-slave'
            }
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'mvn package'
            }
        }
        stage("Deploy Linux Slave"){
            agent {
                label 'linux-slave'
            }
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'sh deploy.sh'
                sh 'sh dockerfile.sh'
            }
        }
    }
    
}
