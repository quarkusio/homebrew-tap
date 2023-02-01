# Generated with JReleaser 1.3.0 at 2023-02-01T17:52:13.29125+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.1.Final/quarkus-cli-2.16.1.Final.zip"
  version "2.16.1.Final"
  sha256 "c1d6d63d0e60d16925170160f6d7aa43e3556559144a623b4100f6a9aa6e39ed"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.1.Final", output
  end
end
