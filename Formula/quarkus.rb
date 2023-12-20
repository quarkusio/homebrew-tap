# Generated with JReleaser 1.3.0 at 2023-12-20T10:33:01.898279Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.4/quarkus-cli-3.6.4.zip"
  version "3.6.4"
  sha256 "79c3cb833c950c160fec8a51e3f38b808c693579735c1468b1677b7c8aa00cc6"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.4", output
  end
end
