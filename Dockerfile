FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive


# setup dotnetcore 3.1 installation
RUN apt-get update && apt-get install -y wget
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN chmod +x packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

# misc
RUN apt-get update && apt-get install -y     \
  build-essential                            \
  apt-transport-https                        \
  dotnet-sdk-3.1                             \
  aspnetcore-runtime-3.1                     \
  doxygen                                    \
  doxygen-doc                                \
  doxygen-gui
