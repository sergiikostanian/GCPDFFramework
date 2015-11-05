require 'xcodeproj'

path_to_project = ARGV[0]

project = Xcodeproj::Project.open(path_to_project)

main_target = project.targets.first
phase = main_target.new_shell_script_build_phase("GC Script")
phase.shell_script = ""
project.save()