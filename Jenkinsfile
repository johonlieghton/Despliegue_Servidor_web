pipeline {
  agent any
  stages {
    stage('Git sincronizar') {
      parallel {
        stage('Git sincronizar') {
          steps {
            echo 'Sincronizacion Git correcta.'
            input 'Esperando confirmacion manual'
          }
        }

        stage('Copia archivos de Git') {
          steps {
            sh 'sshpass -p 7854 ssh Johon@192.168.1.100 \'bash -s\' < scriptWinaLin.sh'
            catchError(buildResult: 'Success', stageResult: 'FAILURE') {
              sh 'exit 0'
            }

          }
        }

      }
    }

    stage('Borrando imagenes y contenedor') {
      steps {
        echo 'Borro imagenes y contenedores ?'
        sh '''
sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < script.sh'''
        echo 'Imagenes y contenedores borradosomienzo despliegue?'
        input 'Contenedor e Imagenes Borradas'
      }
    }

    stage('Ejecutando script.sh') {
      steps {
        echo 'Comienzo a Ejecutar script?'
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash\' < script2.sh'
        echo 'Imagenes y Contenedores Generados'
        input 'Continuo ?'
      }
    }

    stage('Abrir navegador y web') {
      steps {
        sh 'sshpass -p devops ssh devops@192.168.1.118 \'bash -s\' < firefox 192.168.1.118:4000'
        echo 'Despliegue correcto'
      }
    }

  }
}