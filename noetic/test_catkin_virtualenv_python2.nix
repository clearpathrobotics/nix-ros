{
  catkin,
  catkin_virtualenv,
  python3,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_catkin_virtualenv_python2";
  pkgFinal = final.noetic.test_catkin_virtualenv_python2;
  src = srcs.catkin_virtualenv.test_catkin_virtualenv_python2;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    python3
  ];

  colconRunDepends = [
    python3
  ];

  colconTestDepends = [
    rostest
  ];
}
