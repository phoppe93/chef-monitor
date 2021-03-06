name 'monitor'
maintainer 'Philipp H'
maintainer_email 'phil@hellmi.de'
license 'Apache 2.0'
description 'A cookbook for monitoring services, using Sensu, a monitoring framework.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.31'

issues_url 'https://github.com/runningman84/chef-monitor/issues'
source_url 'https://github.com/runningman84/chef-monitor'

%w(
  ubuntu
  debian
  centos
  redhat
  fedora
).each do |os|
  supports os
end

depends 'sudo'
depends 'yum-epel'
depends 'build-essential'
depends 'sensu', '>= 3.0.0'
depends 'uchiwa', '>= 1.2.0'
depends 'zap', '~> 0.11.4'
