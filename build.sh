docker build . --file=Dockerfile -t puppeteer-node12:latest --squash --build-arg VERSION=12

docker tag puppeteer-node12:latest groupbwt/puppeteer-node12:latest

docker push groupbwt/puppeteer-node12:latest