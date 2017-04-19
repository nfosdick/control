#
class role::foreman{
  include r10k
  include foreman
#  include katello

  class { 'puppetdb' : }
  class { 'puppetdb::master::config' : }
}
