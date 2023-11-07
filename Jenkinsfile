pipeline{
    agent any



    stages {


        stage('Getting project from Git') {
            steps{
      			checkout([$class: 'GitSCM', branches: [[name: '*/main']],
			extensions: [],
			userRemoteConfigs: [[url: 'https://github.com/Nadermez/devops.git']]])
            }
        }


       stage('Cleaning the project') {
            steps{
                	sh "mvn -B -DskipTests clean  "
            }
        }



        stage('Artifact Construction') {
            steps{
                	sh "mvn -B -DskipTests package "
            }
        }




        stage('SONARQUBE') {
            steps{

             	sh "mvn clean verify sonar:sonar -Dsonar.projectKey=devops -Dsonar.projectName='devops' -Dsonar.host.url=http://192.168.56.2:9000 -Dsonar.token=sqp_f9d5c0e7497edcecee9f583d39d1fa85e64eb904 "
            }
        }


        stage('Publish to Nexus') {
            steps {


  sh 'mvn deploy'


            }
        }

    }
}