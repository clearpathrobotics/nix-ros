{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "executive_smach";
    rev = "31cc55743431f48e37ee71d26acd5833ebd3753e";
    hash = "sha256-UxBa09X/guvlaRrsGC/kXnbUZywenk7eS/I9k9ULFPc=";
    name = "ros-executive_smach-31cc55743431f48e37ee71d26acd5833ebd3753e";
  });
in
{
  executive_smach = pkg "sha256-knkJaIO44Ue0XfLTUMdOHkGHk48mEn5HMd8D97wFL7E=" "executive_smach";
  smach = pkg "sha256-t9f/FshiYSWRQ7RXt+Z89dj88IPrWbvuiFFb0MO5dTg=" "smach";
  smach_msgs = pkg "sha256-k16JWCPU8G+MdgOyOW9SlvZqhHLN1IYfELl+aIvVkR0=" "smach_msgs";
  smach_ros = pkg "sha256-hCrnm4/MP4W27Uc3w4BeX4p8McDGmHJYXwN8k2X4264=" "smach_ros";
}
