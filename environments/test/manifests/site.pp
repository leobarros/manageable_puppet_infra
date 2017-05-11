if $::osfamily == "RedHat" {
  package { 'epel-release':
    ensure => installed
  }
}

$pacotes = ['vim', 'curl', 'lynx', 'ipython', 'git',
'tree', 'strace', 'wget']

  package{ $pacotes:
    ensure => installed,
  }
