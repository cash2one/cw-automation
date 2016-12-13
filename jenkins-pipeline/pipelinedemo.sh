node {
   // Mark the code checkout 'stage'....
   stage 'Checkout'

   sh "mkdir -p tho"
   dir('thor') {
     git branch: 'master', credentialsId: '29254e2e-256c-47e0-8a9a-756f16e6705a', url: 'git@192.168.10.239:cc/tho.git'
   }
   sh "mkdir -p tho-commons"
   dir('tho-commons') {
     git branch: 'master', credentialsId: '29254e2e-256c-47e0-8a9a-756f16e6705a', url: 'git@192.168.10.239:cc/tho-commons.git'
   }
   sh "mkdir -p thor-commons-lib"
   dir('tho-commons-lib') {
     git branch: 'master', credentialsId: '29254e2e-256c-47e0-8a9a-756f16e6705a', url: 'git@192.168.10.239:cc/tho-commons-lib.git'
   }
   sh "mkdir -p thor-commons-api"
   dir('tho-commons-api') {
     git branch: 'master', credentialsId: '29254e2e-256c-47e0-8a9a-756f16e6705a', url: 'git@192.168.10.239:cc/tho-commons-api.git'
   }
   sh "mkdir -p tho-commons-impl"
   dir('tho-commons-impl') {
     git branch: 'master', credentialsId: '29254e2e-256c-47e0-8a9a-756f16e6705a', url: 'git@192.168.10.239:yhc/tho-commons-impl.git'
   }

   env.JAVA_HOME="${tool 'jdk1.8.0_45'}"
   sh '$JAVA_HOME/bin/java -version'
   def mvnHome = tool 'M3.3'

   stage 'Build'
   dir('tho-commons') {
     sh "${mvnHome}/bin/mvn -s /home/tomcat/files/settings.xml clean install -Dmaven.test.skip=true -Ptho_dev -e"
   }

   sshagent(['d5058e06-4873-4f82-850b-1d5da1b80dc8']) {
      sh 'ssh -p 22 tomcat@15.28.12.16 \'df -h\''
      sh 'scp tho-commons-impl/target/tho-commons.war tomcat@15.28.12.16:/home/tomcat/ant_build/'
   }

}
