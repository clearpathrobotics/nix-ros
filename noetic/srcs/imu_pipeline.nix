{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "imu_pipeline";
    rev = "ec36441c5c0cf1e63c12731a3a59185d29a00979";
    hash = "sha256-SEsfP/qtYDzzTalmA0apIif8BvvBlq+npdT+I/kMinM=";
    name = "ros-perception-imu_pipeline-ec36441c5c0cf1e63c12731a3a59185d29a00979";
  });
in
{
  imu_pipeline = pkg "sha256-/AIlOXFji2Y+WV2HBYbUhtH9Z/OH/uw1H+gTFjeaqIg=" "imu_pipeline";
  imu_processors = pkg "sha256-Dwx5A7sg7Lpyx04rDcSvLTieyqAJ4JKqfxyH2j5KsIw=" "imu_processors";
  imu_transformer = pkg "sha256-L5jV43RIvAuoD4LbnQooZWzWXRbSAZ2aLmliJGsdEdY=" "imu_transformer";
}
