class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.4.0"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.4.0/connect-offset-reset-0.4.0-osx-x86_64.zip"
  sha256 "6bc4020e5fe0cf883f3dc731b097fb44a7f3adf15747d14e43c7557bdb8adabf"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.4.0", output
  end
end