#
class role::foreman{
  include r10k
  #include foreman
  
  class { 'puppetdb' : }
  class { 'puppetdb::master::config' : }
}
