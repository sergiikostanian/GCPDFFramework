require 'xcodeproj'

current_pwd="$PWD"
project_dir=`cd "../../"; pwd`
cd "$current_pwd"
path_to_project=`find "$project_dir" -maxdepth 1 -name "*.xcodeproj" | tail -1`

#path_to_project = "${SRCROOT}/${PROJECT_NAME}.xcodeproj"

project = Xcodeproj::Project.open(path_to_project)

main_target = project.targets.first
phase = main_target.new_shell_script_build_phase("TODO:")
phase.shell_script = "do sth with ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/your.file"
project.save()