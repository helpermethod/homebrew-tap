cask "connectoffsetreset" do
  version "0.1.0"
  sha256 "f85ad17bc3c855f5c960d10744fa5a95e02710de2192c66ac49ed75732298e05"

  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.1.0/connect-offset-reset-0.1.0-linux-x86_64.zip",
      verified: "github.com"
  name "Connect Offset Reset"
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  auto_updates true


  binary "connect-offset-reset-0.1.0-osx-x86_64/bin/connect-offset-reset"
end