pipeline {
    agent any
    tools { 
        maven 'Maven'  
    }

    stages {
        stage('SCM') {
            steps {
                echo 'Hello Clone stage'
                git credentialsId: '1d6c9681-4990-4423-93b0-2a54632a35e5', url: 'https://github.com/polarapu/maven-project1.git'
                }
        }
        stage('Build') {
            steps {
                echo 'Hello Build'
                sh 'mvn clean install'
            }
        }
        stage('Dev-Deploy') {
            steps {
                echo 'Hello Docker Deploy'
                deploy adapters: [tomcat9(credentialsId: '9076516f-2a22-40bd-9fe0-befc84b9cc8b', path: '', url: 'http://192.168.32.128:8081/')], contextPath: 'devops108.war', war: '**/*.war' 
                  }
        }
}
}
