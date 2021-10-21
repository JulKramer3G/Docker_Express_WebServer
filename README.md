# DOCKER_TEMPLATE_GitHub_Container_Registry

![Build Status](https://github.com/JulKramer3G/Docker_Express_WebServer/actions/workflows/main.yml/badge.svg)

Docker template repository for use with an express web server in node.js. With automatic package / container generation for GitHub Container Registry

## Run this on your machine
`$ docker run -p 49160:80 -d ghcr.io/julkramer3g/docker_express_webserver:latest`

Call the web interface on your machine via http://localhost:49160

### Note: Private repositories
To pull private repositories, you have to create a access token first, go to https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token:

Save your token to an environment variable:
```
$ export CR_PAT=YOUR_TOKEN
```

Login to GitHub container registry using:
```
$ echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
> Login Succeeded
```

Then, you can pull / run the image.

