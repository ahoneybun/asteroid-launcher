
# Main project file for Glacier home

TEMPLATE = app
TARGET = lipstick
VERSION = 0.1

INSTALLS = target
target.path = /usr/bin
config.files = lipstick.conf
config.path = /usr/share/lipstick
INSTALLS += config

CONFIG += qt link_pkgconfig
QT += quick compositor
DEFINES += QT_COMPOSITOR_QUICK
HEADERS += \
    glacierwindowmodel.h

SOURCES += \
    main.cpp \
    glacierwindowmodel.cpp

RESOURCES += \
    resources-qml.qrc

PKGCONFIG += lipstick-qt5

OTHER_FILES += qml/*.qml \
    qml/MainScreen.qml \
    qml/compositor.qml \
    qml/LauncherItemDelegate.qml \
    qml/Lockscreen.qml \
    qml/LockscreenClock.qml \
    qml/AppSwitcher.qml \
    qml/AppLauncher.qml \
    qml/ToolBarLayoutExample.qml \
    qml/SwitcherItem.qml \
    qml/CloseButton.qml \
    qml/compositor/WindowWrapperMystic.qml \
    qml/compositor/WindowWrapperBase.qml \
    qml/compositor/WindowWrapperAlpha.qml \
    qml/compositor/ScreenGestureArea.qml \
    qml/NotificationPreview.qml \
    qml/scripts/desktop.js \
    qml/FeedsPage.qml \
    qml/Statusbar.qml \
    qml/StatusbarItem.qml \
    qml/WifiPanel.qml


