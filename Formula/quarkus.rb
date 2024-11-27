# Generated with JReleaser 1.3.0 at 2024-11-27T09:58:44.642384297Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.0/quarkus-cli-3.17.0.zip"
  version "3.17.0"
  sha256 "ce8315c9fd3ca66579d7b5fd4a1abfa5d5d9b2f26e90f5fc0fab951e6fcbd6ac"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.0", output
  end
end
