{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "realtime_support";
    rev = "9b11510dd86a0a167004c8beec82e0a164b70357";
    hash = "sha256-I6CvX7MJQxz8pegNreEI3HwLmBolR61KZa8wgvC8qTE=";
    name = "ros2-realtime_support-9b11510dd86a0a167004c8beec82e0a164b70357";
  });
in
{
  rttest = pkg "sha256-+pg3m3ocOtLwSjzADrzjMdupsUaQLv8ZMTPYgw+qRVI=" "rttest";
  tlsf_cpp = pkg "sha256-DaWV684+Cm/krMM9DsgjeESgnjez55kDXWUaa6tgG1E=" "tlsf_cpp";
}
