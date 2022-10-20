{
  catkin,
  gflags,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ign_gazebo";
  pkgFinal = final.noetic.ros_ign_gazebo;
  src = srcs.ros_ign.ros_ign_gazebo;

  colconBuildDepends = [
    catkin
    gflags
    roscpp
  ];

  colconRunDepends = [
    gflags
    roscpp
  ];

  colconTestDepends = [
  ];
}
