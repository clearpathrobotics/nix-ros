{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosidl_python";
    rev = "20bcc4ca118145a8a2914fa20aaef20a8e3ce72d";
    hash = "sha256-lzwG6ZDL0pRFmuS9LD7NBc3j/2ENR7fL7xnO7KkxEMA=";
    name = "ros2-rosidl_python-20bcc4ca118145a8a2914fa20aaef20a8e3ce72d";
  });
in
{
  rosidl_generator_py = pkg "sha256-M9TvTw85B5BjxP5EaWMKbKvhhJmhieuuGny3WyFqmPc=" "rosidl_generator_py";
}
