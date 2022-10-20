{
  catkin,
  catkin_virtualenv,
  libffi,
  message_generation,
  message_runtime,
  openssl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sesame_ros";
  pkgFinal = final.noetic.sesame_ros;
  src = srcs.jsk_3rdparty.sesame_ros;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    libffi
    message_generation
    openssl
  ];

  colconRunDepends = [
    message_runtime
  ];

  colconTestDepends = [
  ];
}
