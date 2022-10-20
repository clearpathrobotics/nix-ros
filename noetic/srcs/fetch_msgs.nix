{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "fetch_msgs";
    rev = "abe9b7c436a99360f6988fce600dcec0df6a1193";
    hash = "sha256-1+KFb/223pJs6UCFU2X0ssdGYP8fN/2P5KWCtu2HWSQ=";
    name = "fetchrobotics-fetch_msgs-abe9b7c436a99360f6988fce600dcec0df6a1193";
  });
in
{
  fetch_auto_dock_msgs = pkg "sha256-QAiBpSPEz1IwilgM9jt81x2YKV8T20Aax/C9ik4erec=" "fetch_auto_dock_msgs";
  fetch_driver_msgs = pkg "sha256-Bywd1FNC5RTLA0vs5Mu5b3WjkfDGqNscgTWnLltxzqI=" "fetch_driver_msgs";
}
