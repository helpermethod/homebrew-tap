# Generated with JReleaser 0.10.0 at 2022-01-06T20:53:59.485454061Z
class Connor < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connor"
  version "1.2.1"
  license "Apache-2"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/helpermethod/connor/releases/download/v1.2.1/connor-1.2.1-linux-x86_64.zip"
    sha256 "934efd81c805ced0f068ebf5628499cf506e7a77b4cddae9eb2bec1b3a9798c1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/helpermethod/connor/releases/download/v1.2.1/connor-1.2.1-osx-x86_64.zip"
    sha256 "e18acd0bc4ef29d24702545be4e2b4fb5853c967852420b4b943ba6fbf0afd5a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connor"
  end

  test do
    output = shell_output("#{bin}/connor --version")
    assert_match "1.2.1", output
  end
end
