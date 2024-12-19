# Generated with JReleaser 1.3.0 at 2024-12-19T17:37:47.301389745Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.5/quarkus-cli-3.17.5.zip"
  version "3.17.5"
  sha256 "2198e9eb4e5148987c609126387f6abd0bbe33707fae03bdba0bad767eccfe1f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.5", output
  end
end
