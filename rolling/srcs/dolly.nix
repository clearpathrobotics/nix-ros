{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "chapulina";
    repo = "dolly";
    rev = "de9efdf34235d749b9f3b458607d554816304b88";
    hash = "sha256-uaJUcqde/O4SffuEpLiZELCmhmYJnccl0YK7E3TWKvw=";
    name = "chapulina-dolly-de9efdf34235d749b9f3b458607d554816304b88";
  });
in
{
  dolly = pkg "sha256-wsLU5iJNHUo0L2/HFe4FdSw4F536PE413/Eql5wZvIc=" "dolly";
  dolly_follow = pkg "sha256-Udj2U+dWE5+JIz9GOSB6X4C9y3g/g30Jp3+BTuiiRX0=" "dolly_follow";
  dolly_gazebo = pkg "sha256-sLCbhJjIRzZvq15SlStZjonIvhpPw57fK5vRlQ3689A=" "dolly_gazebo";
  dolly_ignition = pkg "sha256-MubFHXy3UtA9/ENxL7D2znaHJPPQSBmqJH3uJ4Tbd7Y=" "dolly_ignition";
  dolly_tests = pkg "sha256-Emm0VMGz7EF8ZvP+J4TL0YbmdX+am/7zeIEUfcIejzc=" "dolly_tests";
}
