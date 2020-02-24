#----------
# POCO
#----------

ExternalProject_Add(Poco
  GIT_REPOSITORY https://github.com/pocoproject/poco.git
  GIT_TAG poco-1.10.1-release
  GIT_SHALLOW ON
  UPDATE_COMMAND ""
  INSTALL_COMMAND ""
  BUILD_ALWAYS OFF
  CMAKE_ARGS
    -DENABLE_APACHECONNECTOR:BOOL=OFF
    -DENABLE_CRYPTO:BOOL=OFF
    -DENABLE_DATA:BOOL=OFF
    -DENABLE_DATA_SQLITE:BOOL=OFF
    -DENABLE_DATA_MYSQL:BOOL=OFF
    -DENABLE_DATA_ODBC:BOOL=OFF
    -DENABLE_ENCODINGS:BOOL=OFF
    -DENABLE_JSON:BOOL=OFF
    -DENABLE_MONGODB:BOOL=OFF
    -DENABLE_NET:BOOL=OFF
    -DENABLE_NETSSL:BOOL=OFF
    -DENABLE_NETSSL_WIN:BOOL=OFF
    -DENABLE_PAGECOMPILER:BOOL=OFF
    -DENABLE_PAGECOMPILER_FILE2PAGE:BOOL=OFF
    -DENABLE_REDIS:BOOL=OFF
    -DENABLE_UTIL:BOOL=OFF
    -DENABLE_XML:BOOL=OFF
    -DENABLE_ZIP:BOOL=OFF
    -DPOCO_STATIC:BOOL=ON
)
