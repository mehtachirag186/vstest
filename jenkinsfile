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
                  azureCLI commands: [[exportVariablesString: '', script: 'az login']], principalCredentialId: 'azterraform'
                }
            }
            stage('Initialize Terraform') {
                steps {
                  powershell '''cd F:\\AzureArchitectDesign\\Terraform
                        terraform.exe init'''
                }
            }
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

