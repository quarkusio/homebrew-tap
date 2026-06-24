# Generated with JReleaser 1.3.0 at 2026-06-24T12:35:17.383948781Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.37.0/quarkus-cli-3.37.0.zip"
  version "3.37.0"
  sha256 "5ed89d4b7f90d45558ad304439add8c297f9d905884812aa1916fa0ff7d12093"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.37.0", output
  end
end
