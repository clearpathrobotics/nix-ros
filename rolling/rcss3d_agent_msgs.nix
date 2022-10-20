{
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcss3d_agent_msgs";
  pkgFinal = final.rolling.rcss3d_agent_msgs;
  src = srcs.rcss3d_agent.rcss3d_agent_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
