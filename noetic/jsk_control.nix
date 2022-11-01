{
  catkin,
  eus_nlopt,
  eus_qp,
  eus_qpoases,
  joy_mouse,
  jsk_calibration,
  jsk_footstep_controller,
  jsk_footstep_planner,
  jsk_ik_server,
  jsk_teleop_joy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_control";
  pkgFinal = final.noetic.jsk_control;
  src = srcs.jsk_control.jsk_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    eus_nlopt
    eus_qp
    eus_qpoases
    joy_mouse
    jsk_calibration
    jsk_footstep_controller
    jsk_footstep_planner
    jsk_ik_server
    jsk_teleop_joy
  ];

  colconTestDepends = [
  ];
}
