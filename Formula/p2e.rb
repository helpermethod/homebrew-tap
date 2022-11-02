# Generated with JReleaser 1.3.0 at 2022-11-02T19:57:16.070152Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v0.1.4/p2e-0.1.4-osx-x86_64.zip"
  version "0.1.4"
  sha256 "02f88f45f17a49bf6de0a06a79c64c5d03158ba17cb64039bfd42e8ff508f5b0"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "0.1.4", output
  end
end
