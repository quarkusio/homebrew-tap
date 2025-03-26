# Generated with JReleaser 1.3.0 at 2025-03-26T11:24:47.738097692Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.20.0/quarkus-cli-3.20.0.zip"
  version "3.20.0"
  sha256 "c89d4d71c871afe17a2409451d1c2bcbb76a4a6dc5bdb011b40e5b95a8660586"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.20.0", output
  end
end
