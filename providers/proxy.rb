
def use_ssl?
  ssl_cert && ssl_key
end

def ssl_cert
  new_resource.ssl_cert
end

def ssl_key
  new_resource.ssl_key
end

def force_ssl?
  new_resource.force_ssl
end

def upstream_name
end

action :create do

  raise "Can't force ssl without enabling it" if force_ssl? && !use_ssl?



end
