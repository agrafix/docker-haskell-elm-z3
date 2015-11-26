FROM agrafix/docker-haskell-elm:lts-3.13_20151112
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C504E590 && \
    echo 'deb http://ppa.launchpad.net/delcypher/gpuverify-smt/ubuntu trusty main' > /etc/apt/sources.list.d/smt.list
RUN apt-get update -y && apt-get -y install z3=4.3.2-0~trusty1
RUN z3 --version
