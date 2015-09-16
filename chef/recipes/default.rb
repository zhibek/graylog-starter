include_recipe "java"
include_recipe "elasticsearch"
include_recipe "mongodb"
include_recipe "graylog2"
include_recipe "graylog2::server"
include_recipe "graylog2::web"
include_recipe "graylog2::api_access"

# Create sample input (gelf udp)
graylog2_inputs "gelf udp" do
  input '{ "title": "gelf", "type":"org.graylog2.inputs.gelf.udp.GELFUDPInput", "global": true, "configuration": { "port": 12201, "allow_override_date": true, "bind_address": "0.0.0.0", "store_full_message": true, "recv_buffer_size": 262144 } }'
end