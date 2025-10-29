# Generated with JReleaser 1.3.0 at 2025-10-29T11:57:11.36310087Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.29.0/quarkus-cli-3.29.0.zip"
  version "3.29.0"
  sha256 "89759842d2224d06a3f8270c92738cdc89a24d1fb4038baa4af937800a76b245"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.29.0", output
  end
end
