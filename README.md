# Basic React/Flask/MySQL app

This app is a skeleton for apps with login/registration functionality.
Forked from this github project: https://github.com/ArjunAranetaCodes/MoreCodes-Youtube/tree/master/react-flask-mysql-login-reg

## Running the app

**You will docker installed to run this.**

Clone the project, then from the project root:
1. Build the docker image with

`docker build -t react-app .`

2. Then start the app with

`docker run -it --rm -v ${PWD}:/app -v /app/node_modules -p 3000:3000 -e CHOKIDAR_USEPOLLING=true react-app`

3. The app will now be available at http://localhost:3000 in your browser.

