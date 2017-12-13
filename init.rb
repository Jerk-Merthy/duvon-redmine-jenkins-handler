require 'redmine'
require_dependency 'rrac/hooks/hooks'

Redmine::Plugin.register :rrac do
    name 'RRAC'
    author 'Jerk Merthy'
    description 'This plugin for Redmine integration with any service having REST API'
    version '0.0.1'
    url 'https://github.com/Jerk-Merthy/rrac.git'
    author_url 'https://github.com/Jerk-Merthy'

    settings :default => {
        'rrac_resources' => '', 
        'rrac_actions' => ''
    },
        :partial => 'settings/rrac_settings'
end
