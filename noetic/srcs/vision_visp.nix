{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "lagadic";
    repo = "vision_visp";
    rev = "db10e16e081adb940be402509e33d14244301df2";
    hash = "sha256-aoeL8a/UTnTsX3GJxlIEET37NxO0m30V55zHXE5SLQU=";
    name = "lagadic-vision_visp-db10e16e081adb940be402509e33d14244301df2";
  });
in
{
  vision_visp = pkg "sha256-CaWh0OhA24QRCQKMuyMUR6orqxMJhoBh7lROTYRvtcg=" "vision_visp";
  visp_auto_tracker = pkg "sha256-1hizQoM+NbqZWQeDFFWvGJSI3PUyYeAAMQ7WO/SJ0/Q=" "visp_auto_tracker";
  visp_bridge = pkg "sha256-S9lVEPJDqHHICsen+nPUU2BEpKOPlSvT8xbhevuWFZg=" "visp_bridge";
  visp_camera_calibration = pkg "sha256-lNlEyxJrT5BAX/u7WQaBK9PLIP/JaZdp++YQ0R5A81k=" "visp_camera_calibration";
  visp_hand2eye_calibration = pkg "sha256-f+RoyEC2P/UfS20IMjygkLrJJ6we1z/PG9zz4OKYPnI=" "visp_hand2eye_calibration";
  visp_tracker = pkg "sha256-tI675BYS4uOdt+XMwlU+gDp8eggFog356I8Ck0+6j3k=" "visp_tracker";
}
