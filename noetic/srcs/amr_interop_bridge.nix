{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LexxPluss";
    repo = "amr_interop_bridge";
    rev = "965c299f2f55a1ed1ccf7bdb446654a775e33c6f";
    hash = "sha256-hXhkUtA0WmIiGfDpQp2/frJSUUwrem/XassHyI8qVL8=";
    name = "LexxPluss-amr_interop_bridge-965c299f2f55a1ed1ccf7bdb446654a775e33c6f";
  });
in
{
  amr_interop_bridge = pkg "sha256-uRu2O1CPzeimDbiZMYAjqQ3U6UCt+MQzW6353CIZjf0=" "amr_interop_bridge";
  amr_interop_msgs = pkg "sha256-gJYqrmBQ6qI0PtSQ1FnedcGsaFc6isMvj/HjzZUyFgc=" "amr_interop_msgs";
}
