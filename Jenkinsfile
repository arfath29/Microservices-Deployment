pipeline {
    agent any

    stages {
        stage('deploy to kubernetes') {
            steps {
                withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://DE9CB0100191B0477731F2A27CC44C79.gr7.ap-south-1.eks.amazonaws.com']]) {
                     sh "kubectl apply -f deployment-service.yml"
                }
            }
        }
        stage('Hello') {
            steps {
                withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://DE9CB0100191B0477731F2A27CC44C79.gr7.ap-south-1.eks.amazonaws.com']]) {
                     sh "kubectl get svc -n webapps"
                 }
            }
        }
    }
}
