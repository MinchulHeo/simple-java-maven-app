pipeline {
	agent any
	tools {
		maven 'Maven 3.8.1'
		openjdk 'openjdk8'
	}
	stages {
		stage('Build') {
			steps {
				sh 'mvn -B -DskipTests clean package'
			}
		}
	}	

}
