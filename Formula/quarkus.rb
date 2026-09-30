# Generated with JReleaser 1.3.0 at 2026-09-30T11:21:17.02332593Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.40.1/quarkus-cli-3.40.1.zip"
  version "3.40.1"
  sha256 "5fa2eb9f9d6fc3392bbb569faf3a097f4df0007922a7f030e55f702aa3f8245b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.40.1", output
  end
end
