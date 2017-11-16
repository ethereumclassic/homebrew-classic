cask 'emeraldwallet' do
  version "0.6.0" # :latest
  # sha256 :no_check
  sha256 "0569e8ba52c845626fd6815ed74e3a747894ac370e71ea91b8c3ae543ba54f33"

  url 'https://github.com/ethereumproject/emerald-wallet/releases/download/v0.6.0/EmeraldWallet-mac-v0.6.0-c91b753.dmg'
  name 'Emerald Wallet'
  homepage 'https://github.com/ethereumproject/emerald-wallet'

  app 'EmeraldWallet.app'

  caveats do
    # depends_on_java('6')
  end
end
