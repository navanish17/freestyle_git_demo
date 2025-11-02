pipeline {
    agent any

    triggers {
        // Poll the GitHub repo every 2 minutes
        pollSCM('H/2 * * * *')
    }

    stages {
        stage('Checkout') {
            steps {
                echo '🔄 Checking out source code...'
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/navanish17/freestyle_git_demo.git']]])
            }
        }

        stage('Build') {
            steps {
                echo '🏗️ Building the project...'
                // Use bat for Windows instead of sh
                bat 'echo Build successful'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                bat 'echo Tests passed'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying the application...'
                bat 'echo Deployment done'
            }
        }
    }
}
