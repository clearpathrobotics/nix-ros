{
  catkin,
  geometry_msgs,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_example_follow_ar_tag";
  pkgFinal = final.noetic.leo_example_follow_ar_tag;
  src = srcs.leo_examples.leo_example_follow_ar_tag;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
