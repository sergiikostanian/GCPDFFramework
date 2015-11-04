require 'xcodeproj'

current_pwd="$PWD"
path_to_project =`cd "../../"; pwd`

project = Xcodeproj::Project.open(path_to_project)

main_target = project.targets.first
phase = main_target.new_shell_script_build_phase("TODO:")
phase.shell_script = "do sth with ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/your.file"
project.save()