{
  catkin,
  python3Packages,
  rosgraph,
  roslaunch,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_roslaunch";
  pkgFinal = final.noetic.test_roslaunch;
  src = srcs.ros_comm.test_roslaunch;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    python3Packages.rospkg
    rosgraph
    roslaunch
  ];
}
