class JenkinshandlerController < ApplicationController
	# Initializes the class using the values stored in the plugins settings.
	# Checks if the input is an empty string and sets the value to nil
	def initialize
		@jenkins_settings =  {}
		

	      if Setting.plugin_rjc['rjc_server_url'].to_s == ""
	      @jenkins_settings[:server_url] = nil
	      else
		  @jenkins_settings[:server_url] = Setting.plugin_rjc['rjc_server_url'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_server_ip'].to_s == ""
		  @jenkins_settings[:server_ip] = nil
		  else
		  @jenkins_settings[:server_ip] = Setting.plugin_rjc['rjc_server_ip'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_server_port'].to_s ==""
		  @jenkins_settings[:server_port] = nil
		  else
		  @jenkins_settings[:server_port] = Setting.plugin_rjc['rjc_server_port'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_proxy_ip'].to_s == ""
		  @jenkins_settings[:proxy_ip] = nil
		  else
		  @jenkins_settings[:proxy_ip] = Setting.plugin_rjc['rjc_proxy_ip'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_proxy_port'].to_s == ""
		  @jenkins_settings[:proxy_port] = nil
		  else
		  @jenkins_settings[:proxy_port] = Setting.plugin_rjc['rjc_proxy_port'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_jenkins_path'].to_s == ""
		  @jenkins_settings[:jenkins_path] = "/"
		  else
		  @jenkins_settings[:jenkins_path] = Setting.plugin_rjc['rjc_jenkins_path'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_username'].to_s == ""
		  @jenkins_settings[:username] = nil
		  else
		  @jenkins_settings[:username] = Setting.plugin_rjc['rjc_username'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_password'].to_s == ""
		  @jenkins_settings[:password] = nil
		  else
		  @jenkins_settings[:password] = Setting.plugin_rjc['rjc_password'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_password_base64'].to_s == ""
		  @jenkins_settings[:password_base64] = nil
		  else
		  @jenkins_settings[:password_base64] = Setting.plugin_rjc['rjc_password_base64'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_log_location'].to_s == ""
		  @jenkins_settings[:log_location] = nil
		  else
		  @jenkins_settings[:log_location] = Setting.plugin_rjc['rjc_log_location'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_log_level'].to_s == ""
		  @jenkins_settings[:log_level] = 1
		  else
		  @jenkins_settings[:log_level] = Setting.plugin_rjc['rjc_log_level'].to_i
		  end
		  
		  if Setting.plugin_rjc['rjc_timeout'].to_s == ""
		  @jenkins_settings[:timeout] = 120
		  else 
		  @jenkins_settings[:timeout] = Setting.plugin_rjc['rjc_timeout'].to_i
		  end
		  
		  if Setting.plugin_rjc['rjc_http_open_timeout'].to_s == ""
		  @jenkins_settings[:http_open_timeout] == 120
		  else
		  @jenkins_settings[:http_open_timeout] = Setting.plugin_rjc['rjc_http_open_timeout'].to_i
		  end
		  
		  if Setting.plugin_rjc['rjc_http_read_timeout'].to_s == ""
		  @jenkins_settings[:http_read_timeout] = 120
		  else
		  @jenkins_settings[:http_read_timeout] = Setting.plugin_rjc['rjc_http_read_timeout'].to_i
		  end
		  
		  @jenkins_settings[:ssl] = Setting.plugin_rjc['rjc_ssl']
		  
		  @jenkins_settings[:follow_redirects] = Setting.plugin_rjc['rjc_follow_redirects']
		
		  
		  if Setting.plugin_rjc['rjc_identity_files'].to_s == ""
		  @jenkins_settings[:identity_file] = nil
		  else
		  @jenkins_settings[:identity_file] = Setting.plugin_rjc['rjc_identity_files'].to_s
		  end
		  
		  if Setting.plugin_rjc['rjc_cookies'].to_s == ""
		  @jenkins_settings[:cookies] = nil
		  else
		  @jenkins_settings[:cookies] = Setting.plugin_rjc['rjc_cookies'].to_s
		  end
		  
		  @jenkins_job = ""
		

		
	end

end

		#@jenkins_settings =  {
		  #:server_url => Setting.plugin_redmine_red_jenkins['rjc_server_url'],
		  #:server_ip => "52.16.157.73",
		  #:server_port => "80",
		  #:proxy_ip => nil,
		  #:proxy_port => nil,
		  #:jenkins_path => " /jenkins/",
		  #:username=> "user",
		  #:password => "IXutnKRARd1x",
		  #:password_base64 => nil,
		  #:log_location => nil,
		  #:log_level => nil,
		  #:timeout => nil,
		  #:http_open_timeout => nil,
		  #:http_read_timeout => nil,
		  #:ssl => nil,
		  #:follow_redirects => nil,
		  #:identity_file => nil,
		  #:cookies => nil
