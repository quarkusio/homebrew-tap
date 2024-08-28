# Generated with JReleaser 1.3.0 at 2024-08-28T16:15:24.596564024Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.14.1/quarkus-cli-3.14.1.zip"
  version "3.14.1"
  sha256 "10b0e190d5cfd6e057db37e3f6c7b8f7b6862d7d3e960ea7d1bf2c35eadd9db0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.14.1", output
  end
end
