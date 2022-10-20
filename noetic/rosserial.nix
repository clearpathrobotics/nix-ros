{
  catkin,
  rosserial_client,
  rosserial_msgs,
  rosserial_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial";
  pkgFinal = final.noetic.rosserial;
  src = srcs.rosserial.rosserial;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosserial_client
    rosserial_msgs
    rosserial_python
  ];

  colconTestDepends = [
  ];
}
