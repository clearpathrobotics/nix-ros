{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pgm_learner";
  pkgFinal = final.noetic.pgm_learner;
  src = srcs.jsk_3rdparty.pgm_learner;

  colconBuildDepends = [
    catkin
    message_generation
    rospy
  ];

  colconRunDepends = [
    message_runtime
    python3Packages.scipy
    rospy
  ];

  colconTestDepends = [
    rostest
  ];
}
