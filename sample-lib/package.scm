;; Package information for the sample library
(name    "Sample Library")
(desc    "A sample library for demonstration purposes")
(ver     0.1)
(rel     1)
(license "MIT")
(groups)
(depends)
(conflicts)
(replaces)
(build
  "cyclone main.scm"
  "cyclone cyclone/sample.sld")

(install 
  "mkdir -p ~DESTDIR~/bin"
  "install -m0755 main ~DESTDIR~/bin"
  "mkdir -p ~DESTDIR~/~LIB~/cyclone"
  "install -m0644 cyclone/sample.sld ~DESTDIR~/~LIB~/cyclone"
  "install -m0644 cyclone/sample.o ~DESTDIR~/~LIB~/cyclone"
  "install -m0644 cyclone/sample.meta ~DESTDIR~/~LIB~/cyclone"
  )

;; Custom uninstall commands
(uninstall "echo 'uninstall cmd 1'"
           "echo 'uninstall cmd 2'")
;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
