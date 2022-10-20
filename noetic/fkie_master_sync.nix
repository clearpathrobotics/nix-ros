{
  catkin,
  fkie_master_discovery,
  fkie_multimaster_msgs,
  rosgraph,
  roslib,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_master_sync";
  pkgFinal = final.noetic.fkie_master_sync;
  src = srcs.fkie_multimaster.fkie_master_sync;

  colconBuildDepends = [
    catkin
    fkie_master_discovery
    fkie_multimaster_msgs
  ];

  colconRunDepends = [
    fkie_master_discovery
    fkie_multimaster_msgs
    rosgraph
    roslib
    rospy
  ];

  colconTestDepends = [
  ];
}
