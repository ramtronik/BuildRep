echo on
sudo apt update -y
sudo apt 
sudo apt install openjdk-11-jre -y
sudo apt install curl -y
sudo apt install vim -y

#recent versions of Jenkins already add themselves to systemdto start up
# oh, and set the jenkins home (/lib/systemd/system/jenkins.service)

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y
sudo apt-get install jenkins -y