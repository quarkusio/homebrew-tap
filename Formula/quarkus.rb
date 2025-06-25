# Generated with JReleaser 1.3.0 at 2025-06-25T13:59:19.959028334Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.24.1/quarkus-cli-3.24.1.zip"
  version "3.24.1"
  sha256 "8f9924d94a23c59305f9e44f3aaa21fcb327a2bc6fd8068882348edb3fbf9c12"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.24.1", output
  end
end
