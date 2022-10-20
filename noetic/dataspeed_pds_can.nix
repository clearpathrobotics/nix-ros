{
  can_msgs,
  catkin,
  dataspeed_can_msg_filters,
  dataspeed_can_usb,
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
  name = "dataspeed_pds_can";
  pkgFinal = final.noetic.dataspeed_pds_can;
  src = srcs.dataspeed_pds.dataspeed_pds_can;

  colconBuildDepends = [
    can_msgs
    catkin
    dataspeed_can_msg_filters
    dataspeed_pds_msgs
    message_filters
    nodelet
    roscpp
  ];

  colconRunDepends = [
    can_msgs
    dataspeed_can_usb
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
