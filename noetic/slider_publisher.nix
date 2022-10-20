{
  catkin,
  rospy,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slider_publisher";
  pkgFinal = final.noetic.slider_publisher;
  src = srcs.slider_publisher.slider_publisher;

  colconBuildDepends = [
    catkin
    rospy
    rqt_gui_py
  ];

  colconRunDepends = [
    rospy
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
