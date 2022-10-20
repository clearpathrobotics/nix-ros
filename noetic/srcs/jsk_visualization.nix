{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_visualization";
    rev = "7d31711959cfe88eaef8fc8a426accaf6dd02621";
    hash = "sha256-VUP2xt90Y4tb7mMv62ctZ9l8e5EFaCDV/xvEguqSjo8=";
    name = "jsk-ros-pkg-jsk_visualization-7d31711959cfe88eaef8fc8a426accaf6dd02621";
  });
in
{
  jsk_interactive = pkg "sha256-C+M96eJuZZF6C9yX4tInILOfgUeuYbiQrDkG4U0nZBg=" "jsk_interactive_markers/jsk_interactive";
  jsk_interactive_marker = pkg "sha256-w3+0iKLu5MHQoXQGd81VywHx6xSKN0ucV6hGwm9Hvr4=" "jsk_interactive_markers/jsk_interactive_marker";
  jsk_interactive_test = pkg "sha256-TTsMi9XDN5YpqmHVT260wRbgrXgWd2QdxXhwI3qoanU=" "jsk_interactive_markers/jsk_interactive_test";
  jsk_rqt_plugins = pkg "sha256-dXuvBtGZdeWAASZ8uf6IwItklvS0iISGXabRAL8MpJs=" "jsk_rqt_plugins";
  jsk_rviz_plugins = pkg "sha256-TbqfUm3KVgoxkzDMIyNhcT/CisU9VVk94ry5PQ6L67c=" "jsk_rviz_plugins";
  jsk_visualization = pkg "sha256-sR2bHaoN3KTK1cAi9+Maizm3PFbNpLjALHa3FNCXjAc=" "jsk_visualization";
}
