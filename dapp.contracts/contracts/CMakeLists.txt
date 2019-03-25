cmake_minimum_required( VERSION 3.5 )

project(dapp_contracts)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_subdirectory(dapp.system)
add_subdirectory(dapp.token)
add_subdirectory(../../../eosio.contracts/contracts/eosio.bios eosio.bios)
add_subdirectory(../../../eosio.contracts/contracts/eosio.msig eosio.msig)
add_subdirectory(../../../eosio.contracts/contracts/eosio.system eosio.system)
add_subdirectory(../../../eosio.contracts/contracts/eosio.token eosio.token)
add_subdirectory(../../../eosio.contracts/contracts/eosio.wrap eosio.wrap)