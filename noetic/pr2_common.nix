{
  catkin,
  pr2_dashboard_aggregator,
  pr2_description,
  pr2_machine,
  pr2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_common";
  pkgFinal = final.noetic.pr2_common;
  src = srcs.pr2_common.pr2_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_dashboard_aggregator
    pr2_description
    pr2_machine
    pr2_msgs
  ];

  colconTestDepends = [
  ];
}
