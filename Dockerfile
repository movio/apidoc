FROM giltarchitecture/ubuntu-jvm:0.6

MAINTAINER mbryzek@alum.mit.edu

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install postgresql-client ruby git

RUN git clone git://github.com/mbryzek/schema-evolution-manager.git
WORKDIR schema-evolution-manager
RUN git checkout 0.9.21
RUN ./configure.rb --prefix /usr/local
RUN ./install.rb


ADD . /usr/share/apidoc
WORKDIR /usr/share/apidoc

RUN ln -s /usr/share/apidoc/api/target/universal/stage /usr/share/apidoc-api
RUN ln -s /usr/share/apidoc/www/target/universal/stage /usr/share/apidoc-www


CMD ["/usr/share/apidoc/start.sh"]
