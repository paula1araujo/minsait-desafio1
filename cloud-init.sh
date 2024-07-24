#cloud-config
package_upgrade: true
packages:
  - docker.io
runcmd:
  - systemctl start docker
  - systemctl enable docker
  - docker run -d -p 80:80 --name wordpress -e WORDPRESS_DB_HOST=localhost -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=password -e WORDPRESS_DB_NAME=wordpress wordpress
