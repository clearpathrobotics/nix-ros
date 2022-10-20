{
  arbotix_python,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "arbotix_sensors";
  pkgFinal = final.noetic.arbotix_sensors;
  src = srcs.arbotix.arbotix_sensors;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    arbotix_python
  ];

  colconTestDepends = [
  ];
}
