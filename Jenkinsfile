pipeline{

    agent any
    parameters{
        choice(name:'Version', choices: ['3.10','3.11','3.12'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description:'')
    }
    stages{
        stage("init") {

            steps{
                echo 'init the app'
            }

        }
        stage("build") {

            steps{
                echo 'build the app'
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
            }

        }
        stage("deploy") {

            steps{
                echo 'deploy the app'
                echo "deploying version ${Version}"
            }

        }
    }
    
}