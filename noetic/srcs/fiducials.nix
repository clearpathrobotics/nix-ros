{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UbiquityRobotics";
    repo = "fiducials";
    rev = "6c09104dd183925549e73825d50123ba5339d258";
    hash = "sha256-9AJ7GZiln2jGzMrjDotUlqMe10pZUe97MjtCRzzA96A=";
    name = "UbiquityRobotics-fiducials-6c09104dd183925549e73825d50123ba5339d258";
  });
in
{
  aruco_detect = pkg "sha256-sFloCLWNzi7OemiHqkdCQl6du9vtF6qOPlRdPSKGlTA=" "aruco_detect";
  fiducial_msgs = pkg "sha256-rAPrs5QWoxnN38TLnBlLSTYgJ9LHHX3LNI9KW1doq0U=" "fiducial_msgs";
  fiducial_slam = pkg "sha256-M08+kOcRbgryFsNK3CAXkwpueB8SPmVZUnhMCOjtgv4=" "fiducial_slam";
  fiducials = pkg "sha256-lygkBaUnpPKgoopTvLGqUxvlbUig3MTi9MOoSTTs38o=" "fiducials";
  stag_detect = pkg "sha256-y0ZHD2H38QU9p9/OXLQC7JWcSGfj785fyLQyTtQrv4k=" "stag_detect";
}
