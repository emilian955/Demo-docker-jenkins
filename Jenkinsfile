pipeline{

    agent {
        docker {
            image 'python:3.12'
        }
    }
    parameters{
        choice(name:'Version', choices: ['3.10','3.11','3.12'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description:'')
    }
    stages{
        stage("init") {
        
            steps{
                echo 'init the app'
                sh 'python3 scripts/init.py'
            }

        }
        stage("build") {

            steps{
                echo 'build the app'
                sh 'python3 scripts/build.py'
            }

        }
        stage("test") {
            when {
                expression {
                    params.executeTests
                }
            }
            steps{  
                echo 'test the app'
                sh 'python3 scripts/test.py'
            }

        }
        stage("deploy") {

            steps{
                echo 'deploy the app'
                sh 'python3 scripts/deploy.py'
            }

        }
    }
    
}