{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "c-ffi-example";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.dom/dmjio/c-ffi-example";
  description = "C FFI Example";
  license = stdenv.lib.licenses.bsd3;
}
