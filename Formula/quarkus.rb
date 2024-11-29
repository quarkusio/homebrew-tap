# Generated with JReleaser 1.3.0 at 2024-11-29T08:51:58.113617151Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.2/quarkus-cli-3.17.2.zip"
  version "3.17.2"
  sha256 "48fd6c90c60763e423347d6225783f0500e2cd5c61709e4697372d3b29a6d66c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.2", output
  end
end
