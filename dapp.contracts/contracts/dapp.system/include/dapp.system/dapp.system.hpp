#pragma once

#include <eosiolib/eosio.hpp>

namespace dapp
{
class[[eosio::contract("dapp.system")]] system : public eosio::contract
{
public:
  using eosio::contract::contract;

  [[eosio::action]] void create(eosio::name slug);

private:
  struct [[eosio::table]] thing
  {
    eosio::name slug;

    uint64_t primary_key() const { return slug.value; }
  };
};

} // namespace dapp