pipeline {
  agent any
  stages {
    stage('Sincronizacion') {
      steps {
        echo 'Sincronizacion Git correcta.'
        input 'Esperando confirmacion manual'
      }
    }

    stage('Subiendo el Script') {
      steps {
        echo 'subiendo'
        sh 'sh script.sh'
      }
    }

  }
}