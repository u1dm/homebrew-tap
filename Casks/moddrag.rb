cask "moddrag" do
  version "0.1.2"
  sha256 "dab6033e623e86f9ffec04477eb09e7bb93b7f4831ca0b6afc9c8fe1e1c6e774"

  url "https://github.com/u1dm/ModDrag/releases/download/v#{version}/ModDrag-#{version}.zip"
  name "ModDrag"
  desc "Move, resize, and maximize windows with side mouse button shortcuts"
  homepage "https://github.com/u1dm/ModDrag"

  depends_on macos: :ventura

  app "ModDrag.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ModDrag.app"]
  end

  caveats do
    <<~EOS
      Grant Accessibility access to ModDrag in:
        System Settings -> Privacy & Security -> Accessibility
    EOS
  end
end
