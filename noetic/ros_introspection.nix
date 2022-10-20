{
  catkin,
  python3Packages,
  roslint,
  rosmsg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_introspection";
  pkgFinal = final.noetic.ros_introspection;
  src = srcs.roscompile.ros_introspection;

  colconBuildDepends = [
    catkin
    rosmsg
  ];

  colconRunDepends = [
    python3Packages.pyyaml
    python3Packages.requests
    python3Packages.rospkg
    python3Packages.ruamel_yaml
    rosmsg
  ];

  colconTestDepends = [
    roslint
  ];
}
