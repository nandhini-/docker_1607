FROM ubuntu
#comments should start in new line
#not in the middle
#LABEL we ll see while inspect
LABEL MAINTAINER nandhnag
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
RUN mkdir /code
copy sample.sh /code/sample.sh
run chmod +x /code/sample.sh
run echo "Building Image..."
run echo @image_variable
workdir /code
#to run commands when creating a container
#when we use cmd give full path
cmd sh /code/sample.sh
