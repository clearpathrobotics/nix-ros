{
  catkin,
  catkin_virtualenv,
  python3Packages,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_catkin_virtualenv_isolated";
  pkgFinal = final.noetic.test_catkin_virtualenv_isolated;
  src = srcs.catkin_virtualenv.test_catkin_virtualenv_isolated;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    python3Packages.requests
    rostest
  ];
}
