{
  catkin,
  message_generation,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "monkeywrench";
  pkgFinal = final.noetic.monkeywrench;
  src = srcs.monkeywrench.monkeywrench;

  colconBuildDepends = [
    catkin
    message_generation
    rospy
  ];

  colconRunDepends = [
    message_generation
    rospy
  ];

  colconTestDepends = [
  ];
}
