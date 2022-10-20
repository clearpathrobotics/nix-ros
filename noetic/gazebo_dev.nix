{
  catkin,
  gazebo_11,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_dev";
  pkgFinal = final.noetic.gazebo_dev;
  src = srcs.gazebo_ros_pkgs.gazebo_dev;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_11
  ];

  colconTestDepends = [
  ];
}
