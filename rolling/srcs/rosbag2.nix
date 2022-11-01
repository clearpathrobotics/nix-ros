{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosbag2";
    rev = "3df2fe30ece1b3490da6f8af8b7c24ed11c7bba9";
    hash = "sha256-NH/MaMTD7ujv4CBjPWqpJSHzKvpP2yztP8kePRwpLTg=";
    name = "ros2-rosbag2-3df2fe30ece1b3490da6f8af8b7c24ed11c7bba9";
  });
in
{
  ros2bag = pkg "sha256-O6/N0oPiK5bHOc0KfD6NA55THopQLFMBEg/KPWlle4M=" "ros2bag";
  rosbag2 = pkg "sha256-BPnoyEJFNaII80+6ZJfj5E4qDQVk+2KMVO4277/9fR8=" "rosbag2";
  rosbag2_compression = pkg "sha256-4mfDEIdlzpsI1DeKpfjAsebprGluqzJZJEQYaQUG5rA=" "rosbag2_compression";
  rosbag2_compression_zstd = pkg "sha256-SExR9XPUs/HiWUePxb5EaHPadSI+xvWyR5WvTlfKk1E=" "rosbag2_compression_zstd";
  rosbag2_cpp = pkg "sha256-3JLKTVNjFDw4AzAYWNd6Y1f30D+ybL7q3LBZ4HAV9IA=" "rosbag2_cpp";
  rosbag2_examples_cpp = pkg "sha256-EMedXUxtC1QArZyQ9saxWuCHpa8IcB9xmXEQFBN0Xhw=" "rosbag2_examples/rosbag2_examples_cpp";
  rosbag2_interfaces = pkg "sha256-CVNMQC9wB9i/LWFWAmskXgjuZ8tJ6Ii5E6k5+LBv8bw=" "rosbag2_interfaces";
  rosbag2_performance_benchmarking = pkg "sha256-YrLZ5XHStgCuzi+5QFPJPc1VHfZ4mzOCpoz5gLQFpcY=" "rosbag2_performance/rosbag2_performance_benchmarking";
  rosbag2_py = pkg "sha256-wLCw/+OI+y8ulEtUZhVxtEdwy0pJUhyTiifBZim7mYo=" "rosbag2_py";
  rosbag2_storage = pkg "sha256-VpiOjcRmyumn3p4Bw5BFAGYmBPusoHpkQImOSmSM1gg=" "rosbag2_storage";
  rosbag2_storage_default_plugins = pkg "sha256-wOecx5SEuUsJt9DQPe+J5NibKXLWKbKpmyKKU5qgeoM=" "rosbag2_storage_default_plugins";
  rosbag2_storage_sqlite3 = pkg "sha256-JzbmwMHji8yFgXYJIpKufW7j90x270m/qKnolbHuKSw=" "rosbag2_storage_sqlite3";
  rosbag2_test_common = pkg "sha256-HueCSFtYybIgpmlclxf1rk47qtAazVwJtLVFDJWjG2g=" "rosbag2_test_common";
  rosbag2_tests = pkg "sha256-cvJZfsRZPcy+YlrGMJBjC4qguhjuWnmSCANgGe9KvXw=" "rosbag2_tests";
  rosbag2_transport = pkg "sha256-JkQy1s0RKM0ndCV/eqXfhTCXQC/RVm6/NkOlpLF1LcA=" "rosbag2_transport";
  shared_queues_vendor = pkg "sha256-gXMQfxVtq+95MV1zBZVbLNOBkmkxzA5fRgfR7pDcApc=" "shared_queues_vendor";
  sqlite3_vendor = pkg "sha256-1SxSxZYB4ScEEqmlHay+4Ysr6OYGnhHOsWMgGcdrefk=" "sqlite3_vendor";
  zstd_vendor = pkg "sha256-Ufy4Y/j5wuIxS2FV2g561LEi3Al6Z5sOZJJNiuuoiSk=" "zstd_vendor";
}
