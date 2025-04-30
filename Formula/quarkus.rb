# Generated with JReleaser 1.3.0 at 2025-04-30T15:10:43.496718372Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.22.1/quarkus-cli-3.22.1.zip"
  version "3.22.1"
  sha256 "2dbc7275700d551da4a199fbe1c5563ace7f230205d5b54347c85908e90154ba"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.22.1", output
  end
end
