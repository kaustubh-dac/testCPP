# testCPP
This repo contains test cpp code connected to eclipse che

jenkins info-
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list

jenkins auto config-

if [ -e testCPP ]:
then
echo "Exists"
else
git clone https://github.com/kaustubh-dac/testCPP.git
fi

docker rm mycpp || true

docker build testCPP
#docker run --name mycpp


error -

usermod -aG docker elpidaguy