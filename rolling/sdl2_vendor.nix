{
  SDL2,
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sdl2_vendor";
  pkgFinal = final.rolling.sdl2_vendor;
  src = srcs.joystick_drivers.sdl2_vendor;

  colconBuildDepends = [
    SDL2
    ament_cmake
  ];

  colconRunDepends = [
    SDL2
  ];

  colconTestDepends = [
  ];
}
