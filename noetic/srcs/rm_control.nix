{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rm-controls";
    repo = "rm_control";
    rev = "9f24b479344e93132946eb7cfca720adb9dbbba3";
    hash = "sha256-n/hU9VMqYZGbBDVizt6e0W5W1InMGKwJCOoM6heXhUQ=";
    name = "rm-controls-rm_control-9f24b479344e93132946eb7cfca720adb9dbbba3";
  });
in
{
  rm_common = pkg "sha256-pI+8JQ/0zWsuTtYeFefq8gVxeo17OjAyQh6K3+kSnxE=" "rm_common";
  rm_control = pkg "sha256-mdY1hW+0QDnEsKa5by5baxvAAK6jde3xHAy1dARpBTc=" "rm_control";
  rm_dbus = pkg "sha256-aHt0cFzAkg5bwLnSZW1Eky6/VgI20XGfWqs9Vs8OXk8=" "rm_dbus";
  rm_gazebo = pkg "sha256-qYx5lFeWg+G/XVpEcT/9lHQmc3cVrkGlmeExm5Gur+I=" "rm_gazebo";
  rm_hw = pkg "sha256-d+g5nlsVHw6lEUrJJHoQT5lI8KvmbB4oW2tWDcYa8JE=" "rm_hw";
  rm_msgs = pkg "sha256-ZQlTEShu30S/kzbusMVFsDeAfZQwNcW1YZel+AYqUnw=" "rm_msgs";
  rm_referee = pkg "sha256-uSM4lMB3utzxtuvQ8gsNk79wmtC5tWWP2iIsDNzr7F0=" "rm_referee";
}
