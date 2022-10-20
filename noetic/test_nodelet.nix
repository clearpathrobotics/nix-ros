{
  catkin,
  nodelet,
  pluginlib,
  rosbash,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_nodelet";
  pkgFinal = final.noetic.test_nodelet;
  src = srcs.nodelet_core.test_nodelet;

  colconBuildDepends = [
    catkin
    nodelet
    pluginlib
    rostest
    std_msgs
  ];

  colconRunDepends = [
    nodelet
    pluginlib
    rostest
    std_msgs
  ];

  colconTestDepends = [
    rosbash
  ];
}
