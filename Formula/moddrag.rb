class Moddrag < Formula
  desc "Move, resize, and maximize macOS windows with side mouse button shortcuts"
  homepage "https://github.com/u1dm/ModDrag"
  url "https://github.com/u1dm/ModDrag/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7602df9517f9a788a183fc685c8c814736f1adb18f4d2bd82947a2f4477f51ed"

  depends_on xcode: :build
  depends_on :macos

  def install
    system "xcrun", "swiftc",
           "-O",
           "-parse-as-library",
           "-framework", "AppKit",
           "-framework", "ApplicationServices",
           "-framework", "CoreGraphics",
           "-framework", "IOKit",
           "main.swift",
           "-o", "mod-drag"

    bin.install "mod-drag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mod-drag --version")
  end
end
