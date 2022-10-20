{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "dynamic-graph-python";
    rev = "e43b664b8ffce1290fe5803a57709998f40076b7";
    hash = "sha256-aROt6b9DQ6JCbWd70TQbTM6K+WI2+HU7mHKEu6UZPhc=";
    name = "stack-of-tasks-dynamic-graph-python-e43b664b8ffce1290fe5803a57709998f40076b7";
  });
in
{
  dynamic-graph-python = pkg "sha256-aROt6b9DQ6JCbWd70TQbTM6K+WI2+HU7mHKEu6UZPhc=" ".";
}
