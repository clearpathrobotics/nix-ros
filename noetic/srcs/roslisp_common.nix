{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "roslisp_common";
    rev = "73bbd1d293ec13dfc2c305de5b5c9a862752baf2";
    hash = "sha256-agrLIyJKiVuWCDBKHcQAmcm4w6koc32KCYhhwPwp8Vg=";
    name = "ros-roslisp_common-73bbd1d293ec13dfc2c305de5b5c9a862752baf2";
  });
in
{
  actionlib_lisp = pkg "sha256-SWRJeH7iYurQCzUdSE7d4xvZKpybsGxHM5s5B7+0TY8=" "actionlib_lisp";
  cl_tf = pkg "sha256-xaRXFfPNz9pKlS01bdnVDGGYtA1FppBZbtN/DdPJ33k=" "cl_tf";
  cl_tf2 = pkg "sha256-DAk7z4dP3vzhJxtCNSQSR0mlgSuDofREWK1HmvqFRWs=" "cl_tf2";
  cl_transforms = pkg "sha256-njq2blq/F5C7SjWWmPOYL9/qE5LVDU9YmcCcY9fp3Fw=" "cl_transforms";
  cl_transforms_stamped = pkg "sha256-Sh/ZxO0JB/nsqTBh/QAxFFb8mzIy1nXGVWS28CIAuEY=" "cl_transforms_stamped";
  cl_urdf = pkg "sha256-XpWIw8X3Ohaso+DgAXQ5eov/m+092vup/jZov599ct0=" "cl_urdf";
  cl_utils = pkg "sha256-3KdrKuNlja1akY68ZH1xABAUs2KOK31hiNRjPrBicgg=" "cl_utils";
  roslisp_common = pkg "sha256-miJA/miFnZekOvXqh4+fK+rgDTEwP7Uu899kgwjziqI=" "roslisp_common";
  roslisp_utilities = pkg "sha256-L7yZcE2DMZSk8zGy+mCge5pmvHLv1fIscE2PwdYvZho=" "roslisp_utilities";
}
