pipeline {
	agent any
	tools {
		maven 'Maven 3.8.1'
		jdk 'jdk8'
	}
	stages {
		stage('Build') {
			steps {
				sh 'mvn -B -DskipTests clean package'
			}
		}
	}	

}
