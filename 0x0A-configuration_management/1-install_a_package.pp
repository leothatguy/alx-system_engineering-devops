# install flask from pip3
package { 'flask' :
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug' :
  ensure   => '2.0.3',  # Pin the compatible version
  provider => 'pip3',
  require  => Package['flask'],  # Ensure Flask is installed first
}
