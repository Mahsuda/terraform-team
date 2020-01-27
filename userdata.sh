 #!/bin/bash
 "sudo yum update -y",
        "sudo yum install epel-release -y",
        "sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y",
        "sudo yum-config-manager --enable remi-php70",
        "sudo touch /etc/yum.repos.d/r1soft.repo",
        "sudo echo "[r1soft]
          name=R1Soft Repository Server
          baseurl=http://repo.r1soft.com/yum/stable/$basearch/
          enabled=1
          gpgcheck=0"",
        "sudo yum install serverbackup-enterprise -y",
        "sudo serverbackup-setup --user wpuser --pass PASSWORD",
        "sudo serverbackup-setup --http-port 8080 --https-port 8443",
        "sudo /etc/init.d/cdp-server restart "
        "sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config",
        "sudo setenforce 0",