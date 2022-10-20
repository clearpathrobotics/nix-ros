{
  catkin,
  roscpp,
  rostest,
  tf,
  tf2_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf_remapper_cpp";
  pkgFinal = final.noetic.tf_remapper_cpp;
  src = srcs.tf_remapper_cpp.tf_remapper_cpp;

  colconBuildDepends = [
    catkin
    roscpp
    tf2_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    roscpp
    tf2_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
    rostest
    tf
  ];
}
