# telerik-github-actions-2021
A repository created for practicing Github Actions  
Feel free to fork this repository and work in the forked version.
Credits to Tom Reid for the Python Code.

1) Pre-built - demo of setting enviromental variables which can be used in githhub actions jobs | steps later ;
2) Check-for-secrets : using Easy detect-secrets (https://github.com/marketplace/actions/easy-detect-secrets) action to check for hardcoded passwords ; depends on  job Pre-built success ;  
3) lint : using Pylint action (https://github.com/marketplace/actions/pylint-action) to do a lint on the python code ; depends on job Check-for-secrets success ; 
4) style : using pycodestyle check style of  the repository python code on different python versions ; depends on job Check-for-secrets success ; 
5) build : using github actions produce an python artefact ; depends on both jobs lint & style success; if any is failed pipeline is terminated ; 
6) unit-test : runs python  doctest against produced python  factorial.py file ; depends on job build success ; 
7) SAST: uses connetion to SonarCloud to have a SonarCloud Scan of the repository ; depends on job unit-test  success ; 
8) database-integration :  installs a service postgress container ;  depends on unit-test;
9) push-to-dockerHub: build Docker image and push to DockerHub repository ; depends on SADT and database-integration jobs success; 
