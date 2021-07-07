class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.0.23"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.0.23/connect-offset-reset-0.0.23-osx-x86_64.zip"
  sha256 "8da376670f2ffe88ce832c161b9a16153f8a78a174fd860eea3062d513705b41"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.0.23", output
  end
end