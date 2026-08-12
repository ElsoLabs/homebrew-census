cask "census" do
  version "0.8.0"
  sha256 "83515c2cf130ae39f7a927fe67f766f234ac493e1293de1f60ccaf891b2e5651"

  url "https://elsolabs.com/census/downloads/Elso%20Census-#{version}.dmg"
  name "Elso Census"
  desc "A full count of what is on your Mac"
  homepage "https://elsolabs.com/census"

  #  already means "sonoma or newer". The string form ">= :sonoma"
  # is deprecated and makes brew print a warning naming this tap on every tap.
  depends_on macos: :sonoma

  app "Elso Census.app"

  # Everything Census writes. Listed so an uninstall leaves nothing behind.
  zap trash: [
    "~/Library/Preferences/com.elsolabs.census.plist",
    "~/Library/Application Support/Inventory",
  ]
end
