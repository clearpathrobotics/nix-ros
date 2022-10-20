{
  catkin,
  catkin_virtualenv,
  rostest,
  test_catkin_virtualenv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_catkin_virtualenv_inherited";
  pkgFinal = final.noetic.test_catkin_virtualenv_inherited;
  src = srcs.catkin_virtualenv.test_catkin_virtualenv_inherited;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    test_catkin_virtualenv
  ];

  colconRunDepends = [
    test_catkin_virtualenv
  ];

  colconTestDepends = [
    rostest
  ];
}
