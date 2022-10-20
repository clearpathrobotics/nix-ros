{
  catkin,
  catkin_virtualenv,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_catkin_virtualenv";
  pkgFinal = final.noetic.test_catkin_virtualenv;
  src = srcs.catkin_virtualenv.test_catkin_virtualenv;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rostest
  ];
}
