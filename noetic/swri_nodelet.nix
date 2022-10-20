{
  boost,
  catkin,
  nodelet,
  rosbash,
  roscpp,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_nodelet";
  pkgFinal = final.noetic.swri_nodelet;
  src = srcs.marti_common.swri_nodelet;

  colconBuildDepends = [
    boost
    catkin
    nodelet
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    boost
    nodelet
    rosbash
    roscpp
    std_msgs
  ];

  colconTestDepends = [
    rosbash
    rostest
  ];
}
