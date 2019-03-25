add_contract(dapp.token dapp.token ${CMAKE_CURRENT_SOURCE_DIR}/src/dapp.token.cpp)

target_include_directories(dapp.token
   PUBLIC
   ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(dapp.token
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")
