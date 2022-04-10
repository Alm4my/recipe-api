pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        echo 'JENKINS WORKS'
        sh '''#!/bin/bash
python --version'''
      }
    }

  }
}