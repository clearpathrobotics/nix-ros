{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosbag2";
    rev = "19158f6debe25640507881f9a2c01cdb1fe4741b";
    hash = "sha256-DnSYT7fxBoi8/LWW+1oLbtPyAyxqV2d3qj0FhJuX2DA=";
    name = "ros2-rosbag2-19158f6debe25640507881f9a2c01cdb1fe4741b";
  });
in
{
  ros2bag = pkg "sha256-/sF1e4lXobR+RkJkTNFomN85sW0Qe1vDGWgceFKkulM=" "ros2bag";
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
  rosbag2_storage_sqlite3 = pkg "sha256-S36KqyRbZgGuu7jPQTAgFPw1lCrljVQsox4DedGkkPs=" "rosbag2_storage_sqlite3";
  rosbag2_test_common = pkg "sha256-HueCSFtYybIgpmlclxf1rk47qtAazVwJtLVFDJWjG2g=" "rosbag2_test_common";
  rosbag2_tests = pkg "sha256-cvJZfsRZPcy+YlrGMJBjC4qguhjuWnmSCANgGe9KvXw=" "rosbag2_tests";
  rosbag2_transport = pkg "sha256-yG54q2K6adv6HF+Kbstxw5aVi9nAd5Tue2bwFTHidSo=" "rosbag2_transport";
  shared_queues_vendor = pkg "sha256-gXMQfxVtq+95MV1zBZVbLNOBkmkxzA5fRgfR7pDcApc=" "shared_queues_vendor";
  sqlite3_vendor = pkg "sha256-1SxSxZYB4ScEEqmlHay+4Ysr6OYGnhHOsWMgGcdrefk=" "sqlite3_vendor";
  zstd_vendor = pkg "sha256-Ufy4Y/j5wuIxS2FV2g561LEi3Al6Z5sOZJJNiuuoiSk=" "zstd_vendor";
}
