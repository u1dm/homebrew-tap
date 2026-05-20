class Moddrag < Formula
  desc "Move, resize, and maximize macOS windows with side mouse button shortcuts"
  homepage "https://github.com/u1dm/ModDrag"
  url "https://github.com/u1dm/ModDrag/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e3fae628daef9cc6c22aaa881925361721bc8d7607b4b7efea8676211ac9383a"

  depends_on xcode: :build
  depends_on :macos

  def install
    system "make", "build"
    system "make", "app"

    bin.install "mod-drag"
    prefix.install ".build/ModDrag.app"
  end

  def caveats
    <<~EOS
      ModDrag includes a menu bar app bundle:
        #{opt_prefix}/ModDrag.app

      To launch it from Spotlight, copy it to /Applications:
        cp -R "#{opt_prefix}/ModDrag.app" /Applications/

      Then grant Accessibility access to ModDrag in:
        System Settings -> Privacy & Security -> Accessibility
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mod-drag --version")
  end
end
