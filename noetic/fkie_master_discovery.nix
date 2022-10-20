{
  avahi,
  catkin,
  fkie_multimaster_msgs,
  rosgraph,
  roslib,
  rospy,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_master_discovery";
  pkgFinal = final.noetic.fkie_master_discovery;
  src = srcs.fkie_multimaster.fkie_master_discovery;

  colconBuildDepends = [
    catkin
    fkie_multimaster_msgs
    std_srvs
  ];

  colconRunDepends = [
    avahi
    fkie_multimaster_msgs
    rosgraph
    roslib
    rospy
    std_srvs
  ];

  colconTestDepends = [
  ];
}
