# Generated with JReleaser 1.3.0 at 2024-06-26T07:51:15.929185088Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.12.0/quarkus-cli-3.12.0.zip"
  version "3.12.0"
  sha256 "1a0e81be721c6fa8e7a524d45ba869d5c925c0af6bc82d6fcde62ee7b1e16095"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.12.0", output
  end
end
