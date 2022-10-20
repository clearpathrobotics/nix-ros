{
  action_msgs,
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_calibration_msgs";
  pkgFinal = final.rolling.robot_calibration_msgs;
  src = srcs.robot_calibration.robot_calibration_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    action_msgs
    builtin_interfaces
    rosidl_default_generators
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
