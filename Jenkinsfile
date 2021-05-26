pipeline {
	agent any
	tools {
		maven 'Maven'
		jdk 'openJDK8'
	}
	stages {
		stage('Build') {
			steps {
				sh 'mvn -B -DskipTests clean package'
			}
		}
		stage('Test') {
			steps {
				echo 'Test start!'
			}
		}
		stage('Deliver') {
			steps {
//				sh './scripts/deliver.sh'
			}
		}
	}	
}
