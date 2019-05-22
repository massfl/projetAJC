
######run gitlab-ce

docker run --detach \
    --name gitlab-ce \
    --restart always \
    -p 8000:80 \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest


# :Z indicates to share volume with other containers
# on CentOS systems because of selinux security package to access the docker.sock directory on the host virtual machine one need to install selinux-dockersock package
# https://docs.gitlab.com/runner/install/docker.html

docker run --detach \
  --name gitlab-runner \
  --restart always \
  --volume /srv/gitlab-runner/config:/etc/gitlab-runner:Z \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
  
