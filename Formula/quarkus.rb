# Generated with JReleaser 1.3.0 at 2025-09-24T12:37:18.23197528Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.27.0/quarkus-cli-3.27.0.zip"
  version "3.27.0"
  sha256 "41f5a167fd65f643a02d186be2f053053b31d09a4c83a97bf58c6b084357a7c0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.27.0", output
  end
end
