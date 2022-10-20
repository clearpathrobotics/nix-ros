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
  name = "rosserial_vex_cortex";
  pkgFinal = final.noetic.rosserial_vex_cortex;
  src = srcs.rosserial.rosserial_vex_cortex;

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
