{
  catkin,
  message_generation,
  roseus,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "contact_states_observer";
  pkgFinal = final.noetic.contact_states_observer;
  src = srcs.jsk_control.contact_states_observer;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    roseus
    std_msgs
  ];

  colconTestDepends = [
  ];
}
