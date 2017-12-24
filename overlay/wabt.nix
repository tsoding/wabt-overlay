{ stdenv, fetchgit, gcc, cmake, gtest, python }:

stdenv.mkDerivation rec {
  name = "wabt";

  src = fetchgit {
    url = "git://github.com/webassembly/wabt.git";
    rev = "f835db8cfb418bb19dd61a10dbe49e1131b664bc";
    sha256 = "";
  };

  buildInputs = [ gcc cmake gtest python ];
}
