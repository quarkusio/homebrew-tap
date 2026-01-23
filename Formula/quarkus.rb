# Generated with JReleaser 1.3.0 at 2026-01-23T11:16:12.13304458Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.8/quarkus-cli-3.30.8.zip"
  version "3.30.8"
  sha256 "d4f76444a4e4021c765ba501fd02f65cd91ce14ed758db9a1bc87b5103e4a45a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.8", output
  end
end
