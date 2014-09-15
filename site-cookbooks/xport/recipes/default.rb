#
# Cookbook Name:: xport
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

application "xport" do
	path "/deploy/to/dir"
	owner "app-user"
	group "app-group"

	repository "https://github.com/nathanph/Xport.git"
	revision node.chef_environment == "production" ? "production" : "develop"

	
	end
end