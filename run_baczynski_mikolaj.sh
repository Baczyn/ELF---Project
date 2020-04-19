 #!/bin/bash


if [ $1 = "clone" ]; then
    git clone https://github.com/Baczyn/ELF---Project.git
elif [ $1 = "run" ]; then
    sudo docker build -t projekt .
    sudo docker run -it projekt
elif [ $1 = "solution" ]; then
    echo $1
elif [ $1 = "clean" ]; then
   rm -rf ELF---Project
fi
