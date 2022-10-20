{
  catkin,
  dataspeed_pds_msgs,
  message_filters,
  nodelet,
  roscpp,
  roslaunch,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_pds_lcm";
  pkgFinal = final.noetic.dataspeed_pds_lcm;
  src = srcs.dataspeed_pds.dataspeed_pds_lcm;

  colconBuildDepends = [
    catkin
    dataspeed_pds_msgs
    message_filters
    nodelet
    roscpp
  ];

  colconRunDepends = [
    dataspeed_pds_msgs
    message_filters
    nodelet
    roscpp
    roslaunch
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
