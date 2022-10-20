{
  catkin,
  smach_viewer,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "executive_smach_visualization";
  pkgFinal = final.noetic.executive_smach_visualization;
  src = srcs.executive_smach_visualization.executive_smach_visualization;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    smach_viewer
  ];

  colconTestDepends = [
  ];
}
