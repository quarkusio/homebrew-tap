# Generated with JReleaser 1.3.0 at 2025-04-24T07:49:10.839018508Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.21.4/quarkus-cli-3.21.4.zip"
  version "3.21.4"
  sha256 "826011c6989b3a24446c999799262952340b833da6b00585e3741ffb82d6fe3a"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.21.4", output
  end
end
