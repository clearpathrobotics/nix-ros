{
  action_msgs,
  ament_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_dashboard_msgs";
  pkgFinal = final.rolling.ur_dashboard_msgs;
  src = srcs.ur_robot_driver.ur_dashboard_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    action_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
