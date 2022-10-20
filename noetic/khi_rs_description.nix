{
  catkin,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_rs_description";
  pkgFinal = final.noetic.khi_rs_description;
  src = srcs.khi_robot.khi_rs_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
