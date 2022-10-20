{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "rcss3d_agent";
    rev = "8c424d7bbc07c0802237a56bcade253733c07b63";
    hash = "sha256-+YV6MJxES3Y71cRoyGlN6i6esbakY09GHcYvVKDXl5c=";
    name = "ros-sports-rcss3d_agent-8c424d7bbc07c0802237a56bcade253733c07b63";
  });
in
{
  rcss3d_agent = pkg "sha256-oJYWy5c1HDviOugLzBa5/VGVuECx2Z7XEKgrlFFW7+w=" "rcss3d_agent";
  rcss3d_agent_basic = pkg "sha256-nDJGmIM8WHHjNPs3KRLNXOf8EM2VIwF9YZX1CVE662Q=" "rcss3d_agent_basic";
  rcss3d_agent_msgs = pkg "sha256-AN/eyLroQDeZjI/JosPYI5tZHhbJn0jP1d8D3wjuN54=" "rcss3d_agent_msgs";
  rcss3d_agent_msgs_to_soccer_interfaces = pkg "sha256-2bEjbfPy02UiTflYzF8AZb2bjZB/Xg1iHUC0deLs7UQ=" "rcss3d_agent_msgs_to_soccer_interfaces";
}
