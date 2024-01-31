# Generated with JReleaser 1.3.0 at 2024-01-31T18:01:01.881586Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.9/quarkus-cli-3.6.9.zip"
  version "3.6.9"
  sha256 "b0ba6c2a3468648273924e7fd6fa6e5ae68a09709988dc7274330668c05a1687"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.9", output
  end
end
