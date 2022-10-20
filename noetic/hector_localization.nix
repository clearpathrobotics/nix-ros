{
  catkin,
  hector_pose_estimation,
  hector_pose_estimation_core,
  message_to_tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_localization";
  pkgFinal = final.noetic.hector_localization;
  src = srcs.hector_localization.hector_localization;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_pose_estimation
    hector_pose_estimation_core
    message_to_tf
  ];

  colconTestDepends = [
  ];
}
