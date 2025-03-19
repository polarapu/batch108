pipeline {
    agent any
    tools { 
        maven 'mvn'  
    }

    stages {
        stage('SCM') {
            steps {
                echo 'Hello Clone stage'
                https://github.com/jaswanthBavi/mvn-war.git
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
                deploy adapters: [tomcat9(credentialsId: '53cf4296-a933-4dda-8214-e621c49c4515', path: '', url: 'http://192.168.64.138:8081/')], contextPath: 'nani-mvn-1.0-SNAPSHOT.war', war: '**/*.war'
                  }
        }
}
}
