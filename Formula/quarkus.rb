# Generated with JReleaser 1.3.0 at 2026-07-29T08:07:32.530192257Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.38.0/quarkus-cli-3.38.0.zip"
  version "3.38.0"
  sha256 "ce75e2784d1938e221d86c8e2c61bcf31a081bc0992284cafe54eb43e12ac36e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.38.0", output
  end
end
