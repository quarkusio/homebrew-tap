# Generated with JReleaser 1.3.0 at 2024-04-03T16:08:01.031418301Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.9.2/quarkus-cli-3.9.2.zip"
  version "3.9.2"
  sha256 "73d4ad71b6d0370fe3d542056da5cd7c6f481f388d3ae31b880827ac2880576f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.9.2", output
  end
end
