require 'redmine'
require_dependency 'rjc/hooks/hooks'

Redmine::Plugin.register :rjc do
    name 'Remote Jenkins Call'
    author 'Paul Tymoshenko'
    description 'This plugin for Redmine to Jenkins integration'
    version '0.0.1'
    #url ''
    author_url 'https://github.com/Pepperrs/red_jenkins'

    settings :default => {
        'rjc_server_url' => nil,
        'rjc_server_ip' => nil,
        'rjc_server_port' => nil,
        'rjc_proxy_ip' => nil,
        'rjc_proxy_port' => nil,
        'rjc_jenkins_path' => "/",
        'rjc_username' => nil,
        'rjc_password' => nil,
        'rjc_password_base64' => nil,
        'rjc_log_location' => nil,
        'rjc_log_level' => 1,
        'rjc_timeout' => 120,
        'rjc_http_open_timeout' => 120,
        'rjc_http_read_timeout' => 120,
        'rjc_ssl' => false,
        'rjc_follow_redirects' => false,
        'rjc_identity_file' => nil,
        'rjc_cookies' => nil
    },
        :partial => 'settings/rjc_settings'

end
