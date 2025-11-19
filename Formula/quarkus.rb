# Generated with JReleaser 1.3.0 at 2025-11-19T20:51:38.612212011Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.29.4/quarkus-cli-3.29.4.zip"
  version "3.29.4"
  sha256 "99ecb7be532a96f344fe14fb7ffd4f3263ac6207ac1f354d396aa9ec30a1f2ff"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.29.4", output
  end
end
