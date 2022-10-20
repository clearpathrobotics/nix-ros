{
  catkin,
  flexbe_core,
  flexbe_input,
  flexbe_mirror,
  flexbe_msgs,
  flexbe_onboard,
  flexbe_states,
  flexbe_testing,
  flexbe_widget,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_behavior_engine";
  pkgFinal = final.noetic.flexbe_behavior_engine;
  src = srcs.flexbe.flexbe_behavior_engine;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    flexbe_core
    flexbe_input
    flexbe_mirror
    flexbe_msgs
    flexbe_onboard
    flexbe_states
    flexbe_testing
    flexbe_widget
  ];

  colconTestDepends = [
  ];
}
