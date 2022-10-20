{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "velodyne";
    rev = "f149faf8392f6dee0387969bce5b518953c1fcf5";
    hash = "sha256-SHr14eyAagNK4sblP8A79L177q93oBxXb7irVjSIgPM=";
    name = "ros-drivers-velodyne-f149faf8392f6dee0387969bce5b518953c1fcf5";
  });
in
{
  velodyne = pkg "sha256-Wr9qH+muZay+hoPYPI7pJRs11jWr4I26LKKsmaWL/4A=" "velodyne";
  velodyne_driver = pkg "sha256-9ysVDD9seg0Ss+VilOfbSs7ysVE2cxvVHaHR3kj+yKQ=" "velodyne_driver";
  velodyne_laserscan = pkg "sha256-Y02fPqGg3v3rY+7zcZv664ko3K6L9yLT6ug+MKfExXs=" "velodyne_laserscan";
  velodyne_msgs = pkg "sha256-5Ak6A/tW8O/xY1B8LoKlY6GJfvga1cnajGYEKb7eKFo=" "velodyne_msgs";
  velodyne_pointcloud = pkg "sha256-5Of7qnh987Y9oufOWDJazSDFcZdDlblZBRriqgEi38E=" "velodyne_pointcloud";
}
