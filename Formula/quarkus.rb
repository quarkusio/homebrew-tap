# Generated with JReleaser 1.3.0 at 2024-07-03T17:35:53.090596555Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.12.1/quarkus-cli-3.12.1.zip"
  version "3.12.1"
  sha256 "fa4a8523e06a0b555601c1340afbde63e0d2eb2a7b7d5356e4312dbd584d27ec"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.12.1", output
  end
end
