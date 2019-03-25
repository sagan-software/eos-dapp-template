
#include <dapp.system/dapp.system.hpp>

namespace dapp
{

void system::create(eosio::name slug)
{
    require_auth(_self);
}

} // namespace dapp

EOSIO_DISPATCH(dapp::system, (create))
