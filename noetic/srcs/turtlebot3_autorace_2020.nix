{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3_autorace_2020";
    rev = "ab2a1f1520ee62eebca3cc6e534b297613fb5d75";
    hash = "sha256-pifHm4cDvvYzamKgQjYKPmjv/OKvSwkBZPjCyHhUiCc=";
    name = "ROBOTIS-GIT-turtlebot3_autorace_2020-ab2a1f1520ee62eebca3cc6e534b297613fb5d75";
  });
in
{
  turtlebot3_autorace_2020 = pkg "sha256-RwUE4dGpOKvtyf33kJ/osG3AmpWG1Cdd38NO2gTq9hQ=" "turtlebot3_autorace_2020";
  turtlebot3_autorace_camera = pkg "sha256-IxFFJdII6nzyCVHxr/PZJi+VytYgdDXdJKuiCbWWj3k=" "turtlebot3_autorace_camera";
  turtlebot3_autorace_core = pkg "sha256-H2ftAP4BNYnDiqZuOCsw4V0VzsQ9+xGb5MyQE52NoQs=" "turtlebot3_autorace_core";
  turtlebot3_autorace_detect = pkg "sha256-PN0Hc6lwr6DuW/+MSm0LhW/NdZYaNP1LCO9s/1UhAc4=" "turtlebot3_autorace_detect";
  turtlebot3_autorace_driving = pkg "sha256-cslPS4KeV/oso/3gRrybMvT2uHLyS432yb02uA4X0c0=" "turtlebot3_autorace_driving";
  turtlebot3_autorace_msgs = pkg "sha256-juuWuMtg5/KzKvogbVfVrStuCVlGZ0F/3yM9AbOF/Dc=" "turtlebot3_autorace_msgs";
}
