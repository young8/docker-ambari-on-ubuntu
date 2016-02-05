As of Docker 1.10: https://blog.docker.com/2016/02/docker-1-10/  running Ubuntu 14:04

Ambari appears to run correctly inside of a Docker container running Ubuntu 14:04.

CHECKLIST

1. Keep the clean Ubuntu image up with the hacky command: "tail -f /dev/null"
2. Update each Ambari Agent machine with th following to let Hortonworks keystore through Ubuntu's keyring - this resolves the 'holding broken packages error'
3. sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD (added to Dockerfile build)
run this after attempting to provison hosts and we get a failure like the stacktrace below: sudo apt-get update
4. Run sudo apt-get install libgcrypt11-dev and sudo apt-get install zlib1g-dev
5. verify the Amabri /etc/hosts points to all ambari agent docker images
