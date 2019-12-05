# testCPP
This repo contains test cpp code connected to eclipse che

if [ -e testCPP ]:
then
echo "Exists"
else
git clone https://github.com/kaustubh-dac/testCPP.git
fi

docker rm mycpp || true

docker build testCPP
#docker run --name mycpp

usermod -aG docker elpidaguy