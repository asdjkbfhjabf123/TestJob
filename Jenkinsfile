pipeline {
	agent any
	stages {
		stage('compile') {
			steps {
				echo "Compiled Successfully!!";
			}
		}

		stage('build & SonarQube analysis') {
			steps {
               				echo 'mvn clean package sonar:sonar'
			}

		stage('Quality-Gate') {
			steps {
					echo "SonarQube Quality Gate passed successfully!!";

			}
		}

		stage('Deploy') {
			steps {
					echo "Pass!";
			}
		}

	}
	post {
		always {
			echo 'This will always run'
		}
		success {
			echo 'This will run only if successful'
		}
		failure {
			echo 'This will run only if failed'
		}
		unstable {
			echo 'This will run was marked as unstable'
		}
		changed {
			echo 'This will run only if the state of the pipeline has changed'
			echo 'For example, if the pipeline was previously failing but is now successful'
		}
	}
}
}
