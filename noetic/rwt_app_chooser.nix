{
  app_manager,
  catkin,
  phantomjs,
  pythonPackages,
  rosbridge_server,
  rostest,
  roswww,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_app_chooser";
  pkgFinal = final.noetic.rwt_app_chooser;
  src = srcs.visualization_rwt.rwt_app_chooser;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    app_manager
    rosbridge_server
    roswww
    sound_play
  ];

  colconTestDepends = [
    phantomjs
    pythonPackages.selenium
    rostest
  ];
}
