# Generated with JReleaser 1.3.0 at 2025-02-19T16:09:05.915862113Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.18.4/quarkus-cli-3.18.4.zip"
  version "3.18.4"
  sha256 "4bff2d0feead6bda94de4b5da121ab17b61b7b8c72a4fb28af63fd38554635e4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.18.4", output
  end
end
