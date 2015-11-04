require 'xcodeproj'

#current_pwd="$PWD"
#project_dir=`cd "../../"; pwd`
#cd "$current_pwd"
#path_to_project=`find "$project_dir" -maxdepth 1 -name "*.xcodeproj" | tail -1`

path_to_project = "ScriptTest.xcodeproj"

project = Xcodeproj::Project.open(path_to_project)

main_target = project.targets.first
puts main_target.name
phase = main_target.new_shell_script_build_phase("GC Script")
phase.shell_script = ""
project.save()