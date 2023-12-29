#! /bin/bash

cd /dev/fortify/Core/config
mv keys keys.old

cp /dev/fortify/keys.zip .

unzip keys.zip

export PATH=$PATH:/dev/fortify/bin
source ~/.bash_profile
