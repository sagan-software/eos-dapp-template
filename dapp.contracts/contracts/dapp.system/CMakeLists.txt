add_contract(dapp.system dapp.system ${CMAKE_CURRENT_SOURCE_DIR}/src/dapp.system.cpp)

target_include_directories(dapp.system
   PUBLIC
   ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(dapp.system
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")
