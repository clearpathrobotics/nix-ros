{
  catkin,
  rwt_app_chooser,
  rwt_image_view,
  rwt_moveit,
  rwt_plot,
  rwt_speech_recognition,
  rwt_utils_3rdparty,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visualization_rwt";
  pkgFinal = final.noetic.visualization_rwt;
  src = srcs.visualization_rwt.visualization_rwt;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rwt_app_chooser
    rwt_image_view
    rwt_moveit
    rwt_plot
    rwt_speech_recognition
    rwt_utils_3rdparty
  ];

  colconTestDepends = [
  ];
}
