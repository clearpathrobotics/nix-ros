{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "bond_core";
    rev = "5a79fecb3e8b6f2c210d83669b5cb40d47d62c47";
    hash = "sha256-sREiL8tEj/dfGuY8aRB8+WjI7zGpJVMKtJIkGzmdwLE=";
    name = "ros-bond_core-5a79fecb3e8b6f2c210d83669b5cb40d47d62c47";
  });
in
{
  bond = pkg "sha256-Gj8R7gQHF1+mLunKHsobXFbEI94xmS9YOFcBUW1sbr0=" "bond";
  bond_core = pkg "sha256-4MncWs6b3oH1OnOcZC8QblsvbLfGo0XGddc6Tkx8URk=" "bond_core";
  bondcpp = pkg "sha256-VySlSMYgK0CtDOaundap7bv6HoNSV0Nzmn4CJmXPY3s=" "bondcpp";
  bondpy = pkg "sha256-cqfnNxlKTXuHdNfPkD0t7fhQ45gEM9icNi+yLXC2EeY=" "bondpy";
  smclib = pkg "sha256-ro5DUUBXMblrINdzD7SjeQDlfnVQYLP/lQV1PRabvIs=" "smclib";
  test_bond = pkg "sha256-zADbSVH+Vu49vXzqPYuPxlofLObgxHwYW+KLVUXfIhM=" "test_bond";
}
