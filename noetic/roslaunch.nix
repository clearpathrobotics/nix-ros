{
  catkin,
  python3Packages,
  rosbuild,
  rosclean,
  rosgraph_msgs,
  roslib,
  rosmaster,
  rosout,
  rosparam,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslaunch";
  pkgFinal = final.noetic.roslaunch;
  src = srcs.ros_comm.roslaunch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.paramiko
    python3Packages.pyyaml
    python3Packages.rospkg
    rosclean
    rosgraph_msgs
    roslib
    rosmaster
    rosout
    rosparam
    rosunit
  ];

  colconTestDepends = [
    rosbuild
  ];
}
