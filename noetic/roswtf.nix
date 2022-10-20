{
  catkin,
  cmake_modules,
  python3Packages,
  rosbag,
  rosbuild,
  rosgraph,
  roslang,
  roslaunch,
  roslib,
  rosnode,
  rosservice,
  rostest,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roswtf";
  pkgFinal = final.noetic.roswtf;
  src = srcs.ros_comm.roswtf;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    python3Packages.paramiko
    python3Packages.rospkg
    rosbuild
    rosgraph
    roslaunch
    roslib
    rosnode
    rosservice
  ];

  colconTestDepends = [
    cmake_modules
    rosbag
    roslang
    std_srvs
  ];
}
