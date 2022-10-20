{
  catkin,
  dataspeed_pds_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_pds_scripts";
  pkgFinal = final.noetic.dataspeed_pds_scripts;
  src = srcs.dataspeed_pds.dataspeed_pds_scripts;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dataspeed_pds_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
