{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "sick_ldmrs_laser";
    rev = "912699208f052304b5a30453d3a7d675f2dce43e";
    hash = "sha256-MQtlLsTrMSNRP4rC94CWzqHvpIryluRsmN2NzB4Rbjw=";
    name = "SICKAG-sick_ldmrs_laser-912699208f052304b5a30453d3a7d675f2dce43e";
  });
in
{
  sick_ldmrs_description = pkg "sha256-Q8x3coR1yErcLgnfvF5LA8BHtP72+1iIKoq/F1n7nKg=" "sick_ldmrs_description";
  sick_ldmrs_driver = pkg "sha256-/+OCSUmP4cNQPZqiwq+drxrZnH9xTGS9bGGNVDtq3NM=" "sick_ldmrs_driver";
  sick_ldmrs_laser = pkg "sha256-3QKVTYW0Wp2OEDaiB/q6yp092kmWZV7Cnjk6RSxphCU=" "sick_ldmrs_laser";
  sick_ldmrs_msgs = pkg "sha256-KNlVFVxCji175XKwUFKjr7svjlmte+FoNybgp7gxzSE=" "sick_ldmrs_msgs";
  sick_ldmrs_tools = pkg "sha256-MI5tevLsnOED6gAdGutFcwWm7wQEdZuHaZlpnEAcK0I=" "sick_ldmrs_tools";
}
