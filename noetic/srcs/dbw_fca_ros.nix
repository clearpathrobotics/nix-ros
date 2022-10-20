{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "dbw_fca_ros";
    rev = "33141660e8f94ccc96baafee378956b177068a93";
    hash = "sha256-S/1G0K8nI9loSekYka42vUTlWMsb2n0F3nR7bXUDreI=";
    name = "DataspeedInc-dbw_fca_ros-33141660e8f94ccc96baafee378956b177068a93";
  });
in
{
  dbw_fca = pkg "sha256-7cIBEZqNTtOT36DKN2228ZTxss9m3JgVB5RwVOfj4e4=" "dbw_fca";
  dbw_fca_can = pkg "sha256-U3TrqG+kE0x7y9wNo7s3QMBdhtEV0ks94JELcQ4Cm8U=" "dbw_fca_can";
  dbw_fca_description = pkg "sha256-lP43jU6lKO0Cg3JEB9CY+s+nqG7ChKnRT4BzfDB9kkM=" "dbw_fca_description";
  dbw_fca_joystick_demo = pkg "sha256-YAN2AI4tIVmP9npWNZdatI3+OPwry8Ru/CXgknJwg9w=" "dbw_fca_joystick_demo";
  dbw_fca_msgs = pkg "sha256-WGjmjtoCXy0+DBOm+TmOLWgcHwcDcz+4YYFoi14l28I=" "dbw_fca_msgs";
}
