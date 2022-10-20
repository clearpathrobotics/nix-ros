{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "wg-perception";
    repo = "people";
    rev = "852851cbf0b8a879114c31e657b83a06b7b149b5";
    hash = "sha256-szoUR7fwB6wZBr18pylgBaoZUYL/BS6GPSvMmc+EQ8Q=";
    name = "wg-perception-people-852851cbf0b8a879114c31e657b83a06b7b149b5";
  });
in
{
  face_detector = pkg "sha256-Wv1dDQlCIEwFWoyK61WLyLLTocAg1SWEYyCvZyWd1tk=" "face_detector";
  leg_detector = pkg "sha256-JTvEGhXt24xAfRH3SPhc2h04H4bzYQs4OXkW3PuTkRA=" "leg_detector";
  people = pkg "sha256-sUs7wabv+MGxLofdN/OULCF2IIfkksl+hLeIH8DBE+c=" "people";
  people_msgs = pkg "sha256-L5763fW5pCqlsFmLsjLfsHdncP66gacQxO38oGQHx4M=" "people_msgs";
  people_tracking_filter = pkg "sha256-508gE48rNrqpHnaF479IxUL1NPwLxdwvIDtTs9FUACA=" "people_tracking_filter";
  people_velocity_tracker = pkg "sha256-XWtQPrQ9iU+nUy4kgWbjxyxME7P9n2dT5WqsdSLp9qI=" "people_velocity_tracker";
}
