default['java']['jdk_version'] = 8
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true

default['elasticsearch']['version'] = '1.5.2'
default['elasticsearch']['cluster']['name'] = 'graylog2'

default['graylog2']['server']['java_opts'] = '-Djava.net.preferIPv4Stack=true'

default['graylog2']['root_password_sha2'] = '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918' # admin
default['graylog2']['password_secret'] = 'LWWS128ijZed7YYVE94lZWGhCHI4xu4V4pqkej13Fm5hJ0D7JuyB4KuThFojCusguxPZ5iqZbqmsn8OHVqTekKWUBgxISisH'
default['graylog2']['web']['secret'] = 'LWWS128ijZed7YYVE94lZWGhCHI4xu4V4pqkej13Fm5hJ0D7JuyB4KuThFojCusguxPZ5iqZbqmsn8OHVqTekKWUBgxISisH'
default['graylog2']['rest']['admin_access_token'] = 'LWWS128ijZed7YYVE94lZWGhCHI4xu4V4pqkej13Fm5hJ0D7JuyB4KuThFojCusguxPZ5iqZbqmsn8OHVqTekKWUBgxISisH'