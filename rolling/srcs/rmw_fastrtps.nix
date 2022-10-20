{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_fastrtps";
    rev = "a7601e609a4a0e27acdba5ab4346be75fb4e6d51";
    hash = "sha256-MRzDJ8KjLz8owKX10CON0/8T+Ycx8mVqCa8W0zzEbzM=";
    name = "ros2-rmw_fastrtps-a7601e609a4a0e27acdba5ab4346be75fb4e6d51";
  });
in
{
  rmw_fastrtps_cpp = pkg "sha256-PRAuGis6JX5TERwH7xjvSJmoO3xOsSISaN19vQDyc4o=" "rmw_fastrtps_cpp";
  rmw_fastrtps_dynamic_cpp = pkg "sha256-0JaA2jv4rwkWyBEJsy/eVBA0cjU18dZohkPSgpe0FUI=" "rmw_fastrtps_dynamic_cpp";
  rmw_fastrtps_shared_cpp = pkg "sha256-bE9XEHfGtpA14bziujsM4NvFzKLXGLzeeBQjkDu7RE8=" "rmw_fastrtps_shared_cpp";
}
