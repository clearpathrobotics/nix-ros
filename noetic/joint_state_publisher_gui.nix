{
  catkin,
  joint_state_publisher,
  python_qt_binding,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_publisher_gui";
  pkgFinal = final.noetic.joint_state_publisher_gui;
  src = srcs.joint_state_publisher.joint_state_publisher_gui;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    python_qt_binding
    rospy
  ];

  colconTestDepends = [
  ];
}
