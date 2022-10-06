pipeline {
        agent any
        tools {
            git 'Default'
            terraform 'terraform'
        }
        stages {
            stage("Git Checkout") {
                steps {
                    git branch: 'main', credentialsId: '6f79daf3-88b4-4141-aa5d-9871d776f666', url: 'https://github.com/mehtachirag186/vstest.git'
                }
            }
            stage('Azure Login') {
                steps {
                    powershell '''az login --service-principal -u 9ed9ec93-681e-47d4-b5dd-cd2a2fcba037 -p RLh8Q~7nhdXgJQHzm8RQqcfvgh3Yfej83JJg7djY -t 0cb6f4c9-1ea8-4af8-9982-6a357695bb22
                        cd F:\\AzureArchitectDesign\\Terraform
                        terraform.exe init
                    '''
                
                //   azureCLI commands: [[exportVariablesString: '', script: 'az login --service-principal -u "9ed9ec93-681e-47d4-b5dd-cd2a2fcba037" -p "RLh8Q~7nhdXgJQHzm8RQqcfvgh3Yfej83JJg7djY" -t "0cb6f4c9-1ea8-4af8-9982-6a357695bb22"']], principalCredentialId: 'azterraform'
                }
            }
//             stage('Initialize Terraform') {
//                 steps {
//                   powershell '''cd F:\\AzureArchitectDesign\\Terraform
//                         terraform.exe init'''
//                 }
//             }
            // stage('Terraform Approval Stage') {
            //     steps {
            //       timeout(time:10, unit:'MINUTES'){
            //           input(message: "Deploy the Infrastructure?")
            //       }
                   
            //     }
            // }
            // stage('Terraform Apply') {
            //     steps {
            //       powershell '''cd F:\\AzureArchitectDesign\\Terraform
            //             terraform.exe apply --auto-approve'''
            //     }
            // }
        }
    }

