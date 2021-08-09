class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.3.0"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.3.0/connect-offset-reset-0.3.0-osx-x86_64.zip"
  sha256 "e00982df558f94b656aef6acf062682f272fd9766b61800f8b40ca05496bf305"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.3.0", output
  end
end