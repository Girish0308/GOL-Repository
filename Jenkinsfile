pipeline{
    tools{
        jdk 'java1.8'
        maven 'maven3.6.3'
    }
    agent none
    stages{
        stage("Compile-Job"){
            agent any
            steps{
                sh 'mvn compile'
            }
        }
        stage("Test-Job"){
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
        stage("Package-Job"){
            agent any
            steps{
                git 'https://github.com/Girish0308/GOL-Repository.git'
                sh 'mvn package'
            }
        }
    }
    
}
