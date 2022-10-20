{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "sick_ldmrs_laser";
    rev = "a8e4f108821bf29fc098f0a26814a418927768f9";
    hash = "sha256-ciVScNhaEVTU0V3mvJiviFkNWCtj7ZXUn2aRR4PIDbc=";
    name = "SICKAG-sick_ldmrs_laser-a8e4f108821bf29fc098f0a26814a418927768f9";
  });
in
{
  sick_ldmrs_description = pkg "sha256-Q8x3coR1yErcLgnfvF5LA8BHtP72+1iIKoq/F1n7nKg=" "sick_ldmrs_description";
  sick_ldmrs_driver = pkg "sha256-CFh2JmPS/DdZ5tYA3Oq97BpmNnBWXqrtpQCgGhkNgc0=" "sick_ldmrs_driver";
  sick_ldmrs_laser = pkg "sha256-3QKVTYW0Wp2OEDaiB/q6yp092kmWZV7Cnjk6RSxphCU=" "sick_ldmrs_laser";
  sick_ldmrs_msgs = pkg "sha256-3jJFqCtACF3LXHcLSPyiw6yjGu34qNZz9O5RhBF3qZ4=" "sick_ldmrs_msgs";
  sick_ldmrs_tools = pkg "sha256-BVYQuLdX2eumEps3/KgelbRhjylsIgIn8yi9Dupsucg=" "sick_ldmrs_tools";
}
