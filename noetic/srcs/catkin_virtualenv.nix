{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "catkin_virtualenv";
    rev = "8ebe799542ffd7c7e6e57e987addab8d676bc1ae";
    hash = "sha256-BsLHysL/m3RB+gdBZM5uTeuxWDCExI1REQWtDK4rHn0=";
    name = "locusrobotics-catkin_virtualenv-8ebe799542ffd7c7e6e57e987addab8d676bc1ae";
  });
in
{
  catkin_virtualenv = pkg "sha256-bS0MWHI/ZmiFUzwqQxr1owkOEIQT62G9/iczT6quH+A=" "catkin_virtualenv";
  test_catkin_virtualenv = pkg "sha256-axRr0PLgyBbiOPxC+eu20xSfrr5r3qywdqUYbZjs2jY=" "test_catkin_virtualenv";
  test_catkin_virtualenv_inherited = pkg "sha256-JdLq2CtUn6Zowj8SdK1J6x947eoTvGWkW97fOu2+kXU=" "test_catkin_virtualenv_inherited";
  test_catkin_virtualenv_isolated = pkg "sha256-PdFdYfBeWnYE6cWfSanYrJdqlt5EBknLEn6whFcunFs=" "test_catkin_virtualenv_isolated";
  test_catkin_virtualenv_python2 = pkg "sha256-pV9HEADXD2dGPbfaHdH2B/FC93TkH3WsWjWfmDAfsi0=" "test_catkin_virtualenv_python2";
}
