{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "marti_common";
    rev = "4b494e16bc1b8816f134387b20e414c730ca737e";
    hash = "sha256-+dR8fDUwYtDh4QB+xjp676cxVcjQvPE5w/HUH1EoL1o=";
    name = "swri-robotics-marti_common-4b494e16bc1b8816f134387b20e414c730ca737e";
  });
in
{
  swri_console_util = pkg "sha256-pp7bYmKlSP2NIuYBP1svL3nC5D+EqUPePO5+Y3gR9fc=" "swri_console_util";
  swri_dbw_interface = pkg "sha256-W5vfLFkFEy+RzA5b8vI35xows2tN6Kxn2Q9cr2ztOmQ=" "swri_dbw_interface";
  swri_geometry_util = pkg "sha256-csQ/KgWda9gAJ5wia5hGsYAtB395Sb8LdRLZSz2TJcY=" "swri_geometry_util";
  swri_image_util = pkg "sha256-ipRh6M4pBEAK+bR3rbXnA7iFwOZaLW7z1oTXtN+PM0E=" "swri_image_util";
  swri_math_util = pkg "sha256-4n1yTPwMSmf72Py5mqAKVaaQm8PpB7OPPIhIjPHvah8=" "swri_math_util";
  swri_opencv_util = pkg "sha256-DUeMOdDgEB/8KAzRZ0lyBauMJtMnAXvB0jMLe7kLewE=" "swri_opencv_util";
  swri_prefix_tools = pkg "sha256-jGS8V05zNbdByxB6CO2otTYWURN/X/Nwbvc46jHNfQ0=" "swri_prefix_tools";
  swri_roscpp = pkg "sha256-ByCYxtKj8r4bB8odx3ZRhT98u+yL4ZfiQ+y5yXERlbU=" "swri_roscpp";
  swri_route_util = pkg "sha256-U0zZ1X0B8zKr330TlrHQh2NJeY+Ifabx21ryDmm48H4=" "swri_route_util";
  swri_serial_util = pkg "sha256-X4uXpfyH7qTNh453+I+swRQSizKmwW1951sjvZvXfuo=" "swri_serial_util";
  swri_system_util = pkg "sha256-qc8r2SxaXfDWH2Y0+p3oMU+7ERyW51tRlIKiI0XhCDg=" "swri_system_util";
  swri_transform_util = pkg "sha256-+2T/Ws0IK1YMxkY7Obp+jXtAVOJmFQ3ikDZLFgxY86U=" "swri_transform_util";
}
