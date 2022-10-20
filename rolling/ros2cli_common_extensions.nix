{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  launch_xml,
  launch_yaml,
  ros2action,
  ros2cli,
  ros2component,
  ros2doctor,
  ros2interface,
  ros2launch,
  ros2lifecycle,
  ros2multicast,
  ros2node,
  ros2param,
  ros2pkg,
  ros2run,
  ros2service,
  ros2topic,
  sros2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2cli_common_extensions";
  pkgFinal = final.rolling.ros2cli_common_extensions;
  src = srcs.ros2cli_common_extensions.ros2cli_common_extensions;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    launch_xml
    launch_yaml
    ros2action
    ros2cli
    ros2component
    ros2doctor
    ros2interface
    ros2launch
    ros2lifecycle
    ros2multicast
    ros2node
    ros2param
    ros2pkg
    ros2run
    ros2service
    ros2topic
    sros2
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
