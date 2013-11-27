
apt::source { 'puppetlabs':
  location   => 'https://apt.puppetlabs.com',
  repos      => 'main dependencies',
  key        => '4BD6EC30',
  key_server => 'pgp.mit.edu',
}

package { 'puppet-common':
  ensure => installed,
  require => Apt::Source[puppetlabs]
}

file { '/home/vagrant/.puppet':
	ensure => directory,
	require => Package[puppet-common],
	owner => 'vagrant',
	group => 'vagrant',
}

file { '/home/vagrant/.puppet/modules':
	ensure => link,
	target => '/vagrant/modules',
	owner => 'vagrant',
	group => 'vagrant',
}
