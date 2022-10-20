{
  camera_calibration,
  catkin,
  ethercat_trigger_controllers,
  image_view,
  pr2_bringup,
  pr2_controller_manager,
  pr2_mannequin_mode,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_bringup_tests";
  pkgFinal = final.noetic.pr2_bringup_tests;
  src = srcs.pr2_self_test.pr2_bringup_tests;

  colconBuildDepends = [
    camera_calibration
    catkin
    ethercat_trigger_controllers
    image_view
    pr2_bringup
    pr2_controller_manager
    pr2_mannequin_mode
  ];

  colconRunDepends = [
    camera_calibration
    ethercat_trigger_controllers
    image_view
    pr2_bringup
    pr2_controller_manager
    pr2_mannequin_mode
  ];

  colconTestDepends = [
  ];
}
