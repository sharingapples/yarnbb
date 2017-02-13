# yarnbb
A simple utility for installing dependencies from bitbucket repo.

npm has somewhat easier syntax for installing from bitbucket repo like  
> `$ npm install --save bitbucket:<user>/<package.git>#<tag>`

Since I prefered using yarn, the url was a bit complicated.  
> `$ yarn add git+ssh://bit@bitbucket.org/user/package.git#tag`  

I kept forgetting the syntax. So instead I wrote this simple shell script
to install packages from bitbucket using the following syntax  
> `$ yarnbb <username/organization> <package> <tag> --dev`

Example:
> `$ yarnbb syaau private-repo v1.0.0`

## Installation
> `$ npm install -g yarnbb`  
or  
> `$ yarn global install yarnbb`

