README

Example of a Dockerfile that sets up a simple Sinatra Application, using Ruby 2.1.2 which is compiled from source


Build this Docker image using this command: (use whatever image name you want)

$ docker build -t="craic/docker_sinatra_example_1:v1" .

NOTE - if you have been messing around with your Dockerfile then I STRONGLY recommend
using the --no-cache option when you build a new image. It can resolve a lot of strange
behaviour that otherwise is difficult to figure out. This is especially true with regard to the apt-get lines.

$ docker build --no-cache -t="craic/docker_sinatra_example_1:v3" .

Note that this dockerfile uses 'root' as the user - you will see this warning:

> Don't run Bundler as root. Bundler can ask for sudo if it is needed, and
> installing your bundle as root will break this application for all non-root
> users on this machine.

You can ignore this for now. For security it would be better to run as a non-root user but I haven't figured out how to do that yet...


Run the image using this command (using your image name and version)

$ docker run -d -P craic/docker_sinatra_example_1:v1
d1f43d5c001ab27856b59c46c08ee7709faaa261fbeef19f9a6d33ba3d2a2bca

Check that it is running with 'docker ps' and get the port number

$ docker ps
CONTAINER ID        IMAGE                               COMMAND             CREATED             STATUS              PORTS                     NAMES
d1f43d5c001a        craic/docker_sinatra_example_1:v1   "foreman start"     15 hours ago        Up 7 seconds        0.0.0.0:49169->5000/tcp   determined_carson

View the web page at this address:

The IP may be localhost or the one used by boot2docker if you are on a Mac
http://192.168.59.103:49169/



