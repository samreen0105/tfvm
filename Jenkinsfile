pipeline{
agent any
tools {
terraform 'Terraform'
}
environment {
ARM_CLIENT_ID="e1877b11-73c3-4f05-a980-908ef5b6aa0f"
ARM_CLIENT_SECRET="ad65a706-822b-4eed-9136-b2a434879f4f"
ARM_SUBSCRIPTION_ID="7de549ce-97a6-4181-a393-0a86e3c9525c"
ARM_TENANT_ID="7453a23a-f546-4af3-8d42-5b4505f1049a"
}
stages{
stage('git checkout'){
steps {
git credentialsId: 'tfvm', url: 'https://github.com/samreen0105/terraform.git'
}
}
stage("Azure Terraform Login") {
steps {
sh "az login --service-principal --username $ARM_CLIENT_ID --password $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID"
}
}
stage('Terraform init'){
steps{
sh 'terraform init'
}
}
stage('Terraform plan'){
steps {
sh 'terraform plan'
 }
}
 stage('Terraform apply'){
steps{
sh 'terraform apply -auto-approve'
}
}
}
}
