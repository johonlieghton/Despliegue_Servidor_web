pipeline {
  agent any
  stages {
    stage('Git Sincronizar') {
      steps {
        echo 'Sincronizacion Git correcta.'
        input 'Continuo ?'
      }
    }

    stage('Borra Imagenes y Docker') {
      steps {
        echo 'Borrado de  imagenes y contenedor'
        sh '''
sshpass -p devops ssh devops@192.168.1.118\'bash -s\' < script.sh'''
        echo 'Imagenes y contenedores borrados.'
        input 'Comenzar Despliegue'
      }
    }

    stage('Armando Imagenes y contenedor') {
      steps {
        echo 'Ejecucion de armado'
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash\' < script2.sh'
        echo 'Imagenes y Contenedor Generados'
        input 'Despliegue Finalizado.'
      }
    }

  }
}