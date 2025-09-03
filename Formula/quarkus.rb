# Generated with JReleaser 1.3.0 at 2025-09-03T15:33:01.261818836Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.26.2/quarkus-cli-3.26.2.zip"
  version "3.26.2"
  sha256 "52e4641dd066c1fcd7a2b7c02a98de7fc52d060a310a6870266bc4035e9f54fb"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.26.2", output
  end
end
