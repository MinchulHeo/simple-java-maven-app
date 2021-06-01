pipeline {
  agent any 
  tools {
    maven'Maven'jdk'openJDK8'
  } 
  stages {
    stage ('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }stage('Test') {
      steps {
        echo 'Test start!'
      }
    }stage('Deliver') {
      steps {
        sshPublisher(publishers: [
          sshPublisherDesc(configName: 'tomcat',
          transfers: [
            sshTransfer(cleanRemote: false,
            excludes: '',
            execCommand: '',
            execTimeout: 120000,
            flatten: false,
            makeEmptyDirs: false,
            noDefaultExcludes: false,
            patternSeparator: '[, ]+',
            remoteDirectory: '',
            remoteDirectorySDF: false,
            removePrefix: 'target',
            sourceFiles: 'target/my-app-1.0-SNAPSHOT.jar')
          ],
          usePromotionTimestamp: false,
          useWorkspaceInPromotion: false,
          verbose: false)
        ])
      }
    }
  }
}
