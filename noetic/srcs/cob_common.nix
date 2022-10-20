{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_common";
    rev = "ce478e015841eb065c3e9d750d294ce115021092";
    hash = "sha256-FXJL4QooK7qFF5bspoC308rVPYhHhhAIoZILSxowqKc=";
    name = "ipa320-cob_common-ce478e015841eb065c3e9d750d294ce115021092";
  });
in
{
  cob_actions = pkg "sha256-29VW8YCFLet5ZaqZikDe49y5EquWynms24Rbt61s2iI=" "cob_actions";
  cob_common = pkg "sha256-2cyNbM8n3q/c6g5FrWFlWvHXt1xe94/i7DCYR0HYgZE=" "cob_common";
  cob_description = pkg "sha256-RbUZ6VmhxR0JwFNY+JocDcu/ouMRN356ZcZhGQI58sI=" "cob_description";
  cob_msgs = pkg "sha256-uzKFi/OEpQ0pk1FGStDelwZ2G3oiA0xMBzkEAdnEdiU=" "cob_msgs";
  cob_srvs = pkg "sha256-OpibWPM3bRciYuG3WUpJP2+uj6Zsk/URLLqYAXKt+zg=" "cob_srvs";
  raw_description = pkg "sha256-dv77V/SigtfhQwXs8PQ7fuCUfNqJW0/M91oZ5nYwzHc=" "raw_description";
}
