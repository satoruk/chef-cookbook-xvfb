

case node['platform']
when "ubuntu"
  package_name = 'xvfb'
when "centos"
  package_name = 'xorg-x11-server-Xvfb'
else
  Chef::Log.warn("Unknown Xvfb package name on the #{node['platform']}")
end

# install package
package package_name do
  action [:install, :upgrade]
end



