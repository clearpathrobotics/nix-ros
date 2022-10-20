{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "rosbridge_suite";
    rev = "b0d0d711931d8ab7a5f079f948ced8875b4dc5d9";
    hash = "sha256-RJPaFjmV4rBmWS5NeB/jfrJBmJxf9oxZqMyxSnR+hvw=";
    name = "RobotWebTools-rosbridge_suite-b0d0d711931d8ab7a5f079f948ced8875b4dc5d9";
  });
in
{
  rosapi = pkg "sha256-cIXAIsW+W39WHva0irEy7YWxlikWPs+d7W6V+jB9KTs=" "rosapi";
  rosbridge_library = pkg "sha256-LZdHa91uSZCI4xCobrhmbbSktDrXCWJRg+eKwYhWmIo=" "rosbridge_library";
  rosbridge_msgs = pkg "sha256-xH6vLqsmuMRQDpoUQkxI8ewMPt5iFe3dyGzNgkWdlkI=" "rosbridge_msgs";
  rosbridge_server = pkg "sha256-ICCCkWf8uOimyIqeopba61SJ7loAoMpBfTrtHfTB++M=" "rosbridge_server";
  rosbridge_suite = pkg "sha256-5I+jCJEjUkoxuERAkSfsm30eQqxPmxsfwuyLd6ltXRE=" "rosbridge_suite";
}
