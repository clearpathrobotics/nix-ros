{
  catkin,
  git,
  roscpp,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fmi_adapter";
  pkgFinal = final.noetic.fmi_adapter;
  src = srcs.fmi_adapter.fmi_adapter;

  colconBuildDepends = [
    catkin
    git
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    roscpp
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
