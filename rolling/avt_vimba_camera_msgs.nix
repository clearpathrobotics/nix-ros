{
  ament_cmake,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "avt_vimba_camera_msgs";
  pkgFinal = final.rolling.avt_vimba_camera_msgs;
  src = srcs.avt_vimba_camera.avt_vimba_camera_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
