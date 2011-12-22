SET(Torch_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})

SET(Torch_INSTALL_BIN_SUBDIR "bin" CACHE PATH
  "Install dir for binaries (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_MAN_SUBDIR "share/man" CACHE PATH
  "Install dir for man pages (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LIB_SUBDIR "lib" CACHE PATH
  "Install dir for archives (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_SHARE_SUBDIR "share" CACHE PATH
  "Install dir for data (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_INCLUDE_SUBDIR "include" CACHE PATH
  "Install dir for include (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_DOK_SUBDIR "share/torch/dok" CACHE PATH
  "Install dir for dokuwiki files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_DOKMEDIA_SUBDIR "share/torch/dokmedia" CACHE PATH
  "Install dir for dokuwiki media files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_HTML_SUBDIR "share/torch/html" CACHE PATH
  "Install dir for .html files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_CMAKE_SUBDIR "share/torch/cmake" CACHE PATH
  "Install dir for .cmake files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LUA_PATH_SUBDIR "share/lua/5.1" CACHE PATH
  "Install dir for Lua packages files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_LUA_CPATH_SUBDIR "lib/lua/5.1" CACHE PATH
  "Install dir for Lua C packages files (relative to Torch_INSTALL_PREFIX)")

SET(Torch_INSTALL_BIN "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_BIN_SUBDIR}")
SET(Torch_INSTALL_MAN "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_MAN_SUBDIR}")
SET(Torch_INSTALL_LIB "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_LIB_SUBDIR}")
SET(Torch_INSTALL_SHARE "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_SHARE_SUBDIR}")
SET(Torch_INSTALL_INCLUDE "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_INCLUDE_SUBDIR}")
SET(Torch_INSTALL_DOK "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_DOK_SUBDIR}")
SET(Torch_INSTALL_HTML "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_HTML_SUBDIR}")
SET(Torch_INSTALL_CMAKE "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_CMAKE_SUBDIR}")
SET(Torch_INSTALL_LUA_PATH "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_LUA_PATH_SUBDIR}")
SET(Torch_INSTALL_LUA_CPATH "${Torch_INSTALL_PREFIX}/${Torch_INSTALL_LUA_CPATH_SUBDIR}")

# reverse relative path to prefix (ridbus is the palindrom of subdir)
FILE(RELATIVE_PATH Torch_INSTALL_BIN_RIDBUS "${Torch_INSTALL_BIN}" "${Torch_INSTALL_PREFIX}/.")
FILE(RELATIVE_PATH Torch_INSTALL_CMAKE_RIDBUS "${Torch_INSTALL_CMAKE}" "${Torch_INSTALL_PREFIX}/.")
GET_FILENAME_COMPONENT(Torch_INSTALL_BIN_RIDBUS "${Torch_INSTALL_BIN_RIDBUS}" PATH)
GET_FILENAME_COMPONENT(Torch_INSTALL_CMAKE_RIDBUS "${Torch_INSTALL_CMAKE_RIDBUS}" PATH)

MARK_AS_ADVANCED(
  Torch_INSTALL_BIN_SUBDIR
  Torch_INSTALL_MAN_SUBDIR
  Torch_INSTALL_LIB_SUBDIR
  Torch_INSTALL_SHARE_SUBDIR
  Torch_INSTALL_INCLUDE_SUBDIR
  Torch_INSTALL_DOK_SUBDIR
  Torch_INSTALL_DOKMEDIA_SUBDIR
  Torch_INSTALL_HTML_SUBDIR
  Torch_INSTALL_CMAKE_SUBDIR
  Torch_INSTALL_LUA_PATH_SUBDIR
  Torch_INSTALL_LUA_CPATH_SUBDIR)
