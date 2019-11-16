#!/bin/sh

# sum : 1.65GB

mkdir -p files

# download CRF++ 0.58
FILE_ID=0B4y35FiV1wh7QVR6VXJ5dWExSTQ
FILE_NAME=CRF++-0.58.tar.gz
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=${FILE_ID}" -o ./files/${FILE_NAME}

# download cabocha 0.69
FILE_ID=0B4y35FiV1wh7SDd1Q1dUQkZQaUU
FILE_NAME=cabocha-0.69.tar.bz2
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=${FILE_ID}" -o ./files/${FILE_NAME}

# download juman-7.01
curl -L -o ./files/juman-7.01.tar.bz2 http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/juman/juman-7.01.tar.bz2

# download jumanpp-1.01
curl -L -o ./files/jumanpp-1.01.tar.xz http://lotus.kuee.kyoto-u.ac.jp/nl-resource/jumanpp/jumanpp-1.01.tar.xz

# download C++ boost
curl -L -o ./files/boost_1_71_0.tar.bz2 https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.bz2

# download KNP
curl -L -o ./files/knp-4.19.tar.bz2 http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.19.tar.bz2