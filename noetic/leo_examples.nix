{
  catkin,
  leo_example_follow_ar_tag,
  leo_example_line_follower,
  leo_example_object_detection,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_examples";
  pkgFinal = final.noetic.leo_examples;
  src = srcs.leo_examples.leo_examples;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    leo_example_follow_ar_tag
    leo_example_line_follower
    leo_example_object_detection
  ];

  colconTestDepends = [
  ];
}
