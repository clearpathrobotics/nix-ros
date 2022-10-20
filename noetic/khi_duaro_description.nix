{
  catkin,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "khi_duaro_description";
  pkgFinal = final.noetic.khi_duaro_description;
  src = srcs.khi_robot.khi_duaro_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
