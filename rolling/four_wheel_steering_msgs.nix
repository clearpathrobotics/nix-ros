{
  ament_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "four_wheel_steering_msgs";
  pkgFinal = final.rolling.four_wheel_steering_msgs;
  src = srcs.four_wheel_steering_msgs.four_wheel_steering_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
