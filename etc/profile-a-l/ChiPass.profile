# Firejail profile for ChiPass
# Description: Cross Platform Password Manager (KeePassXC fork)
# This file is overwritten after every install/update
# Persistent local customizations
include ChiPass.local
# Persistent global definitions
# added by included profile
#include globals.local

# ChiPass shares most paths and options with KeePassXC.
# As such, we redirect to the keepassxc.profile, ignoring options that need adaptations (re-adapted below).
ignore mkdir ${RUNUSER}/app/org.keepassxc.KeePassXC
ignore whitelist ${RUNUSER}/app/org.keepassxc.KeePassXC
ignore whitelist /usr/share/keepassxc
ignore private-bin keepassxc,keepassxc-cli,keepassxc-proxy
ignore dbus-user.own org.keepassxc.KeePassXC.*
ignore join-or-start keepassxc
include keepassxc.profile

# You can enable whitelisting for ChiPass by adding the below to your ChiPass.local.
# If you do, you MUST store your database under ${DOCUMENTS}/ChiPass/foo.kdbx.
#mkdir ${DOCUMENTS}/ChiPass
#whitelist ${DOCUMENTS}/ChiPass
# Needed for KeePassXC-Browser.
#mkdir ${HOME}/.config/BraveSoftware/Brave-Browser/NativeMessagingHosts
#mkfile ${HOME}/.config/BraveSoftware/Brave-Browser/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.config/BraveSoftware/Brave-Browser/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.config/chromium/NativeMessagingHosts
#mkfile ${HOME}/.config/chromium/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.config/chromium/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.config/google-chrome/NativeMessagingHosts
#mkfile ${HOME}/.config/google-chrome/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.config/google-chrome/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.config/vivaldi/NativeMessagingHosts
#mkfile ${HOME}/.config/vivaldi/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.config/vivaldi/NativeMessagingHosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/TorBrowser/Data/Browser/.mozilla/native-messaging-hosts
#mkfile ${HOME}/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/TorBrowser/Data/Browser/.mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/TorBrowser/Data/Browser/.mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.config/mozilla/native-messaging-hosts
#mkdir ${HOME}/.mozilla/native-messaging-hosts
#mkfile ${HOME}/.config/mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#mkfile ${HOME}/.mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.config/mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#whitelist ${HOME}/.mozilla/native-messaging-hosts/org.keepassxc.keepassxc_browser.json
#mkdir ${HOME}/.cache/keepassxc
#mkdir ${HOME}/.config/keepassxc
#mkdir ${HOME}/.local/state/keepassxc
#whitelist ${HOME}/.cache/keepassxc
#whitelist ${HOME}/.config/keepassxc
#whitelist ${HOME}/.config/KeePassXCrc
#whitelist ${HOME}/.local/state/keepassxc
#include whitelist-common.inc

mkdir ${RUNUSER}/app/org.chipass.ChiPass
whitelist ${RUNUSER}/app/org.chipass.ChiPass
whitelist /usr/share/ChiPass

private-bin ChiPass,ChiPass-cli,ChiPass-proxy

dbus-user.own org.chipass.ChiPass.*

# Add the next line to your ChiPass.local to allow notifications.
#dbus-user.talk org.freedesktop.Notifications

# Mutex is stored in /tmp by default, which is broken by private-tmp.
join-or-start ChiPass
