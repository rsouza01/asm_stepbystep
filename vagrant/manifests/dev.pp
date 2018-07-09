# -*- mode: ruby -*-
# vi: set ft=ruby :
#
#
# nasm.pp - Server configuation
#
#
# Author: 	Rodrigo Alvares de Souza
# 			rsouza01@gmail.com
#
#
# History:
# Version 0.1: 2017/12/17 (rsouza) - First version.
#

exec { "apt-update":
command => "/usr/bin/apt-get update"
}

package { ["mc", "make", "gcc", "nasm"]:
ensure => installed,
require => Exec["apt-update"]
}
