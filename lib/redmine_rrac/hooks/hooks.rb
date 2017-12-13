module Redmine_RRAC

    class Hooks < Redmine::Hook::ViewListener
        def controller_issues_edit_after_save(context={ })
            # TODO: add http call action
            open('/home/redmine/data/plugins/redmine_rrac/myfile.out', 'w') { |f|
                f.puts context
                f.puts Setting.plugin_redmine_rrac
            }
        end
    end
end
