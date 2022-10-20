{
  geometry_msgs,
  rosidl_default_generators,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_msgs";
  pkgFinal = final.rolling.microstrain_inertial_msgs;
  src = srcs.microstrain_inertial.microstrain_inertial_msgs;

  colconBuildDepends = [
    geometry_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
