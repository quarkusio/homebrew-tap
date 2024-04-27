# Generated with JReleaser 1.3.0 at 2024-04-27T13:57:27.36355644Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.9.5/quarkus-cli-3.9.5.zip"
  version "3.9.5"
  sha256 "4e301fe85c289cd04ffe9d67ac82dc7833d9caff60bf9036bb4b43f1f15c01c5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.9.5", output
  end
end
