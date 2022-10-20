{
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_common_msgs";
  pkgFinal = final.rolling.marti_common_msgs;
  src = srcs.marti_messages.marti_common_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
