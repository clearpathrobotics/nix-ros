{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "catkin_virtualenv";
    rev = "b42a44f9717e5e7e2db6c0b69c22440f693e48aa";
    hash = "sha256-qy3wm6hKWKH3KHvr75/gMtTn7uiaX8xjZdRHN43TN60=";
    name = "locusrobotics-catkin_virtualenv-b42a44f9717e5e7e2db6c0b69c22440f693e48aa";
  });
in
{
  catkin_virtualenv = pkg "sha256-bS0MWHI/ZmiFUzwqQxr1owkOEIQT62G9/iczT6quH+A=" "catkin_virtualenv";
  test_catkin_virtualenv = pkg "sha256-axRr0PLgyBbiOPxC+eu20xSfrr5r3qywdqUYbZjs2jY=" "test_catkin_virtualenv";
  test_catkin_virtualenv_inherited = pkg "sha256-JdLq2CtUn6Zowj8SdK1J6x947eoTvGWkW97fOu2+kXU=" "test_catkin_virtualenv_inherited";
  test_catkin_virtualenv_isolated = pkg "sha256-PdFdYfBeWnYE6cWfSanYrJdqlt5EBknLEn6whFcunFs=" "test_catkin_virtualenv_isolated";
  test_catkin_virtualenv_python2 = pkg "sha256-pV9HEADXD2dGPbfaHdH2B/FC93TkH3WsWjWfmDAfsi0=" "test_catkin_virtualenv_python2";
}
