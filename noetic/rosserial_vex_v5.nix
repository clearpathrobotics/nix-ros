{
  catkin,
  rospy,
  rosserial_client,
  rosserial_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_vex_v5";
  pkgFinal = final.noetic.rosserial_vex_v5;
  src = srcs.rosserial.rosserial_vex_v5;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    rosserial_client
    rosserial_python
  ];

  colconTestDepends = [
  ];
}
