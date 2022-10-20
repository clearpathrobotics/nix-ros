{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "micro-ROS";
    repo = "micro_ros_diagnostics";
    rev = "be37125760b8b025fd1d7bc6f0829863c4dd0d39";
    hash = "sha256-HQeOsfieGXJ3RbddcrIlSOdRO8OAo7m4kECoFonxhSM=";
    name = "micro-ROS-micro_ros_diagnostics-be37125760b8b025fd1d7bc6f0829863c4dd0d39";
  });
in
{
  micro_ros_common_diagnostics = pkg "sha256-MwtkZRIp7uJb600gew6kEQHZULsnjNspqNxJaBiIrsk=" "micro_ros_common_diagnostics";
  micro_ros_diagnostic_bridge = pkg "sha256-nuUxB4wTRvtnuVEtetZ2xbZA5QV2C/NNOLnC0NnLprs=" "micro_ros_diagnostic_bridge";
  micro_ros_diagnostic_msgs = pkg "sha256-xGBC8mIRfs5I6lAkAzW5Of8VN+2LGw2oo120+/A2pTs=" "micro_ros_diagnostic_msgs";
  micro_ros_diagnostic_updater = pkg "sha256-K3ecVA/Je2q1g+LWEjFRwJ1OAnR7YjrCXgpPSzFbVqI=" "micro_ros_diagnostic_updater";
}
