{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CCNYRoboticsLab";
    repo = "imu_tools";
    rev = "472666b8430521ba0203e236165ac8f09cc4b41f";
    hash = "sha256-F32pa4oEx3fvSPLwvbRsUTLeq9RA6jgrsXHBLl38MTY=";
    name = "CCNYRoboticsLab-imu_tools-472666b8430521ba0203e236165ac8f09cc4b41f";
  });
in
{
  imu_complementary_filter = pkg "sha256-ZPGg9wHoe+X6Yn0HUz7py7u+iuTQ4DZvSFbnLddrgr4=" "imu_complementary_filter";
  imu_filter_madgwick = pkg "sha256-KY7fVs0auCxZHMRGsxz151p8GUzlF6SoYRuArEN9UiQ=" "imu_filter_madgwick";
  imu_tools = pkg "sha256-TwnbHGZAeAzQkvQQPsiJom3etXNheKfJs6JmzqUn+6c=" "imu_tools";
  rviz_imu_plugin = pkg "sha256-x3MyWvIgNSMw0++PQ3gxYa5ZNrzi/Om/5D9vJxtckR4=" "rviz_imu_plugin";
}
