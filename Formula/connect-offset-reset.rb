class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.5.0"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.5.0/connect-offset-reset-0.5.0-osx-x86_64.zip"
  sha256 "0c5cf90f0ef7a4222952dd962b81bff94f1477f08623dce7da6c0007814210fe"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.5.0", output
  end
end