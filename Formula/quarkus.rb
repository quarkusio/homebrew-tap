# Generated with JReleaser 1.0.0 at 2022-05-11T11:15:49.042237+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.9.0.Final/quarkus-cli-2.9.0.Final.zip"
  version "2.9.0.Final"
  sha256 "c4328b42692bf0153e71f2130bc539fd26220157c29a287df72388de1c5dd693"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.9.0.Final", output
  end
end
