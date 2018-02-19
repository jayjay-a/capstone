# capstone project for D  

## getting started  
centos7, ruby2.4.3, rails5.1.5, postgresql10.2, nodejs8.9.4
### windows  
1. install ruby 
    - [download](https://rubyinstaller.org/downloads/)
    - run installer, press enter when prompted
    - open cmd check if its installed by running ruby -v
    - if not set path environment variables
	    - open control panel > system & security > system
	    - advanced system settings > environment variables
	    - edit system path variable
	    - new
	    - add ruby path. (should look something like C:\Ruby24-x64\bin)
	    - hit ok on everything to close
	    -  open new cmd and check ruby -v
2. install rails
    - actually its probably there already check with rails -v
3. install [postgresql](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)
    - open pgadmin
	- make user (d8taflow:ireallyhopeidontfailthisclass) with super rights
	- make databases (make sure to set owner d8taflow)
4. install git [here](https://git-scm.com/downloads)
5. install nodejs [here] (https://nodejs.org/en/download/)


### linux or windows using wsl
1. follow [this](https://gist.github.com/jayjay-a/f1acddb18c7d2b3b590d2ff122ea84ab) to install ruby/rails
2. install postgresql
	```
	sudo apt update
	sudo apt install postgresql postgresql-contrib libpq-dev
	sudo -u postgres createuser -s d8taflow
	sudo -u postgres psql
	\password d8taflow
	ireallyhopeidontfailthisclass
	\q
	```
3. install nodejs [here] (https://nodejs.org/en/download/package-manager/#enterprise-linux-and-fedora)

### macos
idk goodluck