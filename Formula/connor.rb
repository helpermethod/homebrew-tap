class Connor < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connor"
  version "1.0.0"
  url "https://github.com/helpermethod/connor/releases/download/v1.0.0/connor-1.0.0-osx-x86_64.zip"
  sha256 "6cb8409b4fd4b222347e2a68fea026a10625e738ca84850cb6e293c3985f4061"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connor"
  end

  test do
    output = shell_output("#{bin}/connor --version")
    assert_match "1.0.0", output
  end
end