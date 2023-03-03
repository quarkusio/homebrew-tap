# Generated with JReleaser 1.3.0 at 2023-03-03T16:20:19.015476+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.4.Final/quarkus-cli-2.16.4.Final.zip"
  version "2.16.4.Final"
  sha256 "9709f8abde98a2fc60857cb52993c88160c599590f037577f55c39ca3e1917b7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.4.Final", output
  end
end
