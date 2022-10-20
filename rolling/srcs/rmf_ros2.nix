{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_ros2";
    rev = "6193007acdb9c7290f1fcb587beb84457ccd6c32";
    hash = "sha256-w8Srb3t+qcv/YCVVnQeY540jp4i2dfi+H87snu11DQM=";
    name = "open-rmf-rmf_ros2-6193007acdb9c7290f1fcb587beb84457ccd6c32";
  });
in
{
  rmf_fleet_adapter = pkg "sha256-pV2tiiXBYcIDwEk+HaEyw1E/Yl4QOtQY2dZ/hRfzOe0=" "rmf_fleet_adapter";
  rmf_fleet_adapter_python = pkg "sha256-jdiuU+CXLUwo8tN78/Puoucgx5MmtS3l2E5drojPIZw=" "rmf_fleet_adapter_python";
  rmf_task_ros2 = pkg "sha256-wcAwXFKSnwQ7PPV9+2q5mJdzz6bPU+dpOlwWk3gKj4s=" "rmf_task_ros2";
  rmf_traffic_ros2 = pkg "sha256-gRDFNZsJQH2ePbaUefCtN623+SHz23Q1jSBtWv8dtZU=" "rmf_traffic_ros2";
  rmf_websocket = pkg "sha256-x46R1JeTDcu8fpUTf5Y/mfO6AaHj8q335NaFuNom06s=" "rmf_websocket";
}
