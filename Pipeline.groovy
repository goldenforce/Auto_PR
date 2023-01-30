node('Devgs')
{
    //def BuildCommand = 'ant -f build/build.xml'
    step([$class: 'WsCleanup'])
    stage('GIT CO')
    {
      git credentialsId: 'bn10738_GIT', url: 'https://prdbitbucket.saccap.int/scm/goldensource/edm.git'  
    }
}