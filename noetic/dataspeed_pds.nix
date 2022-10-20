{
  catkin,
  dataspeed_pds_can,
  dataspeed_pds_lcm,
  dataspeed_pds_msgs,
  dataspeed_pds_scripts,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_pds";
  pkgFinal = final.noetic.dataspeed_pds;
  src = srcs.dataspeed_pds.dataspeed_pds;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dataspeed_pds_can
    dataspeed_pds_lcm
    dataspeed_pds_msgs
    dataspeed_pds_scripts
  ];

  colconTestDepends = [
  ];
}
