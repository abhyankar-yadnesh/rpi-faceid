#!/bin/bash
cd /home/yadnesh/project/dataset
echo -n Enter Name
read name1
mkdir $name1
cd ..
source env/bin/activate
python images.py
echo Done!!!