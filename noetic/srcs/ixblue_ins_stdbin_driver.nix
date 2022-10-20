{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ixblue";
    repo = "ixblue_ins_stdbin_driver";
    rev = "3b1212a12f981810a03128f9d8f89ae0b490045f";
    hash = "sha256-4SKPA40Mf48iZMjVv+KhrN8iUqxqihU/PfRcMDLOJug=";
    name = "ixblue-ixblue_ins_stdbin_driver-3b1212a12f981810a03128f9d8f89ae0b490045f";
  });
in
{
  ixblue_ins = pkg "sha256-KRogPGGUVYeQP7RODBj5CTtl4IzJAPFwot2MxP9q0ck=" "ixblue_ins";
  ixblue_ins_driver = pkg "sha256-vQ74xVua663yW4fX+h1xgft8OqHbSBTR7M6YdS+xobo=" "ixblue_ins_driver";
  ixblue_ins_msgs = pkg "sha256-mGmykbgOqH5j2XSi0VVw6+MdufbCFUtLo5vYaMvbzJk=" "ixblue_ins_msgs";
}
