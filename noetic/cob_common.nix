{
  catkin,
  cob_actions,
  cob_description,
  cob_msgs,
  cob_srvs,
  raw_description,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_common";
  pkgFinal = final.noetic.cob_common;
  src = srcs.cob_common.cob_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_actions
    cob_description
    cob_msgs
    cob_srvs
    raw_description
  ];

  colconTestDepends = [
  ];
}
