pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        echo 'JENKINS WORKS'
        sh 'pip install docker-compose'
        sh 'docker-compose run app sh -c "python manage.py test"'
      }
    }

  }
}