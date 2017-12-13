module RedJenkins

    class Hooks < Redmine::Hook::ViewListener
        # This is the controller hook for saving issues with testcases
        def controller_issues_edit_after_save(context={ })
            open('/home/redmine/data/plugins/myfile.out', 'w') { |f|
                f.puts context
            }
        end

    end

end
