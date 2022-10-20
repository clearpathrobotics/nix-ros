{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "fuse";
    rev = "07676a8a47ad00b605153d6d98aa58dce663a39e";
    hash = "sha256-5nHpiezdP9jONarCm/DZEGbIL33/aVejFT77vlmypwI=";
    name = "locusrobotics-fuse-07676a8a47ad00b605153d6d98aa58dce663a39e";
  });
in
{
  fuse = pkg "sha256-fNIeOlL9jLL3OzEUoCbxsQw5E7Cda+T8uGkNJFWBnAc=" "fuse";
  fuse_constraints = pkg "sha256-UlLT7wpAFmPN3We1jaHlzFM9xxW2Huzolmm6SkovAPk=" "fuse_constraints";
  fuse_core = pkg "sha256-gn/Zsi8Cn96k8VupPm5BJd7HQoHbWLKRFnOjOseJWtI=" "fuse_core";
  fuse_doc = pkg "sha256-BVKP6wDqbcwLRfDSF9t6FM3+1x7yMFYkkXxrCRZ/yhE=" "fuse_doc";
  fuse_graphs = pkg "sha256-mgFDTp0aiBUN16EwXmKQhNFMisw03tUz6G2eZ4TCzLE=" "fuse_graphs";
  fuse_loss = pkg "sha256-pgddiOZ6H5NiFxl7BmGsIeRG6Og6vJbMVUzYLTEPtgg=" "fuse_loss";
  fuse_models = pkg "sha256-KMhF1Ssiq+MnMpmPv6xsBKZ+B+rddOlBR54eVxR2Zms=" "fuse_models";
  fuse_msgs = pkg "sha256-kpAxD9WBkmHZ5rWPvPtgjcvs0J12pfqF9onpMebQYNc=" "fuse_msgs";
  fuse_optimizers = pkg "sha256-37PtGpzJNHdVCCm+I4ySWP+PF0B4fyAA89hwjXgjAbY=" "fuse_optimizers";
  fuse_publishers = pkg "sha256-GECTmPwMneG1cLZ5+nxlje0o3jHOO5heZLfAmQOaSlQ=" "fuse_publishers";
  fuse_tutorials = pkg "sha256-iwytGbpPU3JPE7wwtqWOwu7RC8nearZA1BNk0mokAvg=" "fuse_tutorials";
  fuse_variables = pkg "sha256-I8zzNIO43n2MsTCljDynsWw/N7MV1A0zhbWGyK6d6WE=" "fuse_variables";
  fuse_viz = pkg "sha256-tzYKjag8L+VplSbtcXB5kNGPIWMmNkd1SEC/cbTJ9BE=" "fuse_viz";
}
