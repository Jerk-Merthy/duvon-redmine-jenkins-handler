class JenkinshandlerController < ApplicationController
    def initialize
        @rrac_settings =  {}
        if Setting.plugin_rrac['rrac_resources'].to_s == ""
            @rrac_settings[:resources] = nil
        else
            # transform to array of turples
            @rrac_settings[:resources] = Setting.plugin_rrac['rrac_resources'].to_s
        end

        if Setting.plugin_rrac['rrac_actions'].to_s == ""
            @rrac_settings[:actions] = nil
        else
            # transform to array of turples
        @rrac_settings[:actions] = Setting.plugin_rrac['rrac_actions'].to_s
        end
    end
end
