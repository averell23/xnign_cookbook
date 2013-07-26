def initialize(*args)
  super
  @action = :create
end

actions :create

# You can use either "server names" to directly pass in the server name string, or
# site_name + subdomains. Not that "include_root_domain" doesn't sensibly work w/
# server_names
attribute :virtual_host, :kind_of => String, :name_attribute => true
attribute :upstream_port, kind_of => Integer, required => true
attribute :ssl_cert :kind_of => String
attribute :ssl_key, :kind_of => String
attribute :force_ssl, :kind_of => [TrueClass, FalseClass], :default => false
