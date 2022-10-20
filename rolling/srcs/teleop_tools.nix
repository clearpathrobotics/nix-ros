{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "teleop_tools";
    rev = "d6fd09179347dabb82edcafb04444fb2581c544e";
    hash = "sha256-L8E4gLB37xI65i9fLS0RDn3j2ZL52Aqmjo/jMsKeFDw=";
    name = "ros-teleop-teleop_tools-d6fd09179347dabb82edcafb04444fb2581c544e";
  });
in
{
  joy_teleop = pkg "sha256-3tF525D5yma0LcOP3WoB9eAvZxmLHKRp2Y/wY19IgoM=" "joy_teleop";
  key_teleop = pkg "sha256-vYsFqBp4HC3gFOpiAKh9HdDTsnCj8pKDoLLPCVaqoR0=" "key_teleop";
  mouse_teleop = pkg "sha256-hHZavp0ekYjVGMiLg3jgKQKi5n/LLSs8Vd51ZEwC40Y=" "mouse_teleop";
  teleop_tools = pkg "sha256-q2OLIf9BqA+iTMnToMkFfOjDJ9ZvOtm1oR0CvGPKYng=" "teleop_tools";
  teleop_tools_msgs = pkg "sha256-Y6MBUJdyb15qlrFfN7uMGJmdhw85dStrb46GMyaxs2Y=" "teleop_tools_msgs";
}
