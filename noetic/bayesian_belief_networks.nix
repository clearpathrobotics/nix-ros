{
  catkin,
  git,
  message_generation,
  message_runtime,
  mk,
  rospy,
  std_msgs,
  unzip,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bayesian_belief_networks";
  pkgFinal = final.noetic.bayesian_belief_networks;
  src = srcs.jsk_3rdparty.bayesian_belief_networks;

  colconBuildDepends = [
    catkin
    git
    message_generation
    mk
    rospy
    std_msgs
    unzip
  ];

  colconRunDepends = [
    message_runtime
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
