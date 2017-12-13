module RRAC

    class Hooks < Redmine::Hook::ViewListener
        def controller_issues_edit_after_save(context={ })
            open('/home/redmine/data/plugins/rrac/myfile.out', 'w') { |f|
                f.puts context
            }
        end

    end

end
