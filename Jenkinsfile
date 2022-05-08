pipeline {
environment {
registry = "sathish529"
registryCredential = 'dockercredentials'
dockerImage = 'terraform-vpcnew'
}
agent any
stages {
stage('Cloning our Git') {
steps {
git 'https://github.com/Sathish529/terraform-vpcnew'
}
}
stage('Building our image') {
steps{
script {
dockerNow = docker.build registry+"/"+ dockerImage + ":$BUILD_NUMBER"
}
}
}
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerNow.push()
}
}
}
}
stage('Cleaning up') {
steps{
sh "docker rmi $registry/$dockerImage:$BUILD_NUMBER"
}
}
}
}