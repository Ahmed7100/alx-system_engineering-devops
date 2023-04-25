# Puppet manifest to configure ssh client with public key authentication
include stdlib

file_line { 'Turn off password authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthetication no',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '     Identityfile ~/.ssh/school',
} 
