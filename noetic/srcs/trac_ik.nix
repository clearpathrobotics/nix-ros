{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "traclabs";
    repo = "trac_ik";
    rev = "9d22477e70d64df75720ec99066cb03ee813ec3d";
    hash = "sha256-EV/jVid+CNcvQnZr9gpEUW1E3rWAny7zxhS8SqSsMqg=";
    name = "traclabs-trac_ik-9d22477e70d64df75720ec99066cb03ee813ec3d";
  });
in
{
  trac_ik = pkg "sha256-GloFBotEVdW5XrvYNvEYy64etH+T3hirJxXxWOhMG64=" "trac_ik";
  trac_ik_examples = pkg "sha256-Q92hm/vUxXU485UwSSCXsFbfQxmIeSX0OeJ22a3HYLI=" "trac_ik_examples";
  trac_ik_kinematics_plugin = pkg "sha256-/pvYkZUaWOE6NZSPe6LeDnVx9VcLYdX/jNal0osi+YU=" "trac_ik_kinematics_plugin";
  trac_ik_lib = pkg "sha256-IGXEf4k2ltqLNHyC66CULH6fR9OWBJkRn4VLihmrycI=" "trac_ik_lib";
  trac_ik_python = pkg "sha256-MjZN/QZDjpxlSMbQ7FVi2xBKPBOoJ9xji49+BW4XWdU=" "trac_ik_python";
}
