class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQJw6WjA2MRqP3yg0bg1haWSdZelL5bbw7FuDKGaywUheUI3Py8pACQOBZzvXuWNHtmhteVuAYCouDO1AmPxzSABOYvPIp99pOIFaUhFHt8qnahk16E9o0i6LvCjFWvuUsxXLryqiQRAazYAb7YsfyrM98zDqZ2aS3hwal1/zYkHX54cB1S+2f2HkNB10qpwEMPWZ14/RzlvT1rDn5Aw0e7XQ2YVMZOyXqOGhWAZWYWLur5zxwDeLgNQLxU5M4rnJ/G+mB56GwZeGS/rDxpKhV+VYDq/TKnZaSpZCnwUHjSQJmy9Prx9swU3Qb8ShYKIs5hdHyB/LwMbtvDBUFvDpp',
        }
}
