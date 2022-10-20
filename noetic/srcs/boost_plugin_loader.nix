{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tesseract-robotics";
    repo = "boost_plugin_loader";
    rev = "2fb0c0db829f6b10fb769e89697e4678fd58ea09";
    hash = "sha256-V8R4l+HbliAKROkcc7xXCdYoo3jGTt6aMXQ7KCrh+2A=";
    name = "tesseract-robotics-boost_plugin_loader-2fb0c0db829f6b10fb769e89697e4678fd58ea09";
  });
in
{
  boost_plugin_loader = pkg "sha256-V8R4l+HbliAKROkcc7xXCdYoo3jGTt6aMXQ7KCrh+2A=" ".";
}
