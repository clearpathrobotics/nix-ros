{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "dbw_polaris_ros";
    rev = "d203492958c6a9c7271bd8b75d5f013b754ebf76";
    hash = "sha256-QwDma/xlEYTPdfPrm48wy/MZuVsFicPeQUsNExmIjew=";
    name = "DataspeedInc-dbw_polaris_ros-d203492958c6a9c7271bd8b75d5f013b754ebf76";
  });
in
{
  dbw_polaris = pkg "sha256-WuML9WDYWGzhZ1jEVWWCdDTvTyTeNjwkNi+2RDg9mlk=" "dbw_polaris";
  dbw_polaris_can = pkg "sha256-0F61PhtGgYrFsYu2voT/LIQNj6NJrTNaQ11B6t2DkBU=" "dbw_polaris_can";
  dbw_polaris_description = pkg "sha256-g77ksXpk7YyiTCJQpT8Bkm77oBTwzgOPDQJYqcZ4N8o=" "dbw_polaris_description";
  dbw_polaris_joystick_demo = pkg "sha256-OaLaoaVO7IPP3vwlS2qELnYBILroQdmaovqGYgK/KHQ=" "dbw_polaris_joystick_demo";
  dbw_polaris_msgs = pkg "sha256-wiQJVqzVl21b2oMsagyIx9du31O2ud/wqXZBudlZsdM=" "dbw_polaris_msgs";
}
