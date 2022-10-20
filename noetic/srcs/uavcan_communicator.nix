{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "InnopolisAero";
    repo = "uavcan_communicator";
    rev = "e2ee9bc8e86d22284e5ef49794b5ee418265dd9c";
    hash = "sha256-OwPPQ144fhfE3YXqQPNomf465ccCJGFH6vJ8vEM0Cqc=";
    name = "InnopolisAero-uavcan_communicator-e2ee9bc8e86d22284e5ef49794b5ee418265dd9c";
  });
in
{
  uavcan_communicator = pkg "sha256-t9PiCkg9+4CMosWQrf6pxicEnyvNcU7ZylzQsyh+QRY=" "uavcan_communicator";
  uavcan_msgs = pkg "sha256-ncs33JqDleo6Q4nnEdYo5yFWrUZLxFpfz0rIiL7ROfs=" "uavcan_msgs";
}
