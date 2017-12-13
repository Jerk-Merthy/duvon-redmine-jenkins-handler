require 'redmine'
require_dependency 'rrac/hooks/hooks'

Redmine::Plugin.register :rrac do
    name 'rrac'
    author 'Jerk Merthy'
    description 'This plugin for Redmine to any service with REST API'
    version '0.0.1'
    url 'https://github.com/Jerk-Merthy/rrac.git'
    author_url 'https://github.com/Jerk-Merthy'

    settings :default => {
        'rrac_resources' => nil,
	'rrac_actions' => nil
    },
        :partial => 'settings/rrac_settings'

end
