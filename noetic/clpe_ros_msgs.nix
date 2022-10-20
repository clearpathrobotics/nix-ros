{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clpe_ros_msgs";
  pkgFinal = final.noetic.clpe_ros_msgs;
  src = srcs.clpe_ros_msgs.clpe_ros_msgs;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
