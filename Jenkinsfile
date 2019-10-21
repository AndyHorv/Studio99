pipeline {
    agent any
    
    stages{
        stage('build'){
            steps{
                bat "mvn clean compile"
            }
            post{
            	always {
            		echo "build stage finished!"
            	}
            	failure {
            		echo "build failed"
            	}
            	success {
            		echo "build success"
            	}
            }
        }
        stage('package'){
            steps{
                bat "mvn -DskipTests package"
            }
        }
        /*
        stage('deliver'){
            steps{
                copy 
            }
        }
        */
    }
    post{
    	always {
    		echo "pipeline finished!"
    	}
    	failure {
    		echo "pipeline failed"
    	}
    	success {
    		echo "pipeline success"
    	}
    }
}