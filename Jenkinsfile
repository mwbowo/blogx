pipeline {  
 agent any

 environment {
   GIT_COMMIT_SHORT = sh(returnStdout: true, script: '''echo $GIT_COMMIT | head -c 7''')
 }

 stages {
   stage('Prepare .env') {
     steps {
       sh 'echo GIT_COMMIT_SHORT=$(echo $GIT_COMMIT_SHORT) > .env'
     }
   }

   stage('Build blogx') {
     steps {
         sh 'whoami'
         sh 'docker build . -t blogx:$GIT_COMMIT_SHORT'
         sh 'docker tag blogx:$GIT_COMMIT_SHORT mwbowo/blogx:$GIT_COMMIT_SHORT'
         sh 'docker push mwbowo/blogx:$GIT_COMMIT_SHORT'
     }
   }

   stage('Deploy to remote server') {
     steps {
       sshPublisher(publishers: [sshPublisherDesc(configName: 'Remote Server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'cd blogx && docker compose up -d', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: 'blogx', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '.env.example,.env,docker-compose.yml')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
     }
   }
 }
}