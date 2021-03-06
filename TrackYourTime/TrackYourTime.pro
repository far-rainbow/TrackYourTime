#-------------------------------------------------
#
# Project created by QtCreator 2016-01-07T17:46:23
#
#-------------------------------------------------

QT       += core gui network widgets qml

# QT += script - for old scriptsmanager

mac:LIBS += -framework CoreGraphics
mac:LIBS += -framework AppKit
mac: QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.8

TARGET = TrackYourTime
TEMPLATE = app
CONFIG+=address_sanitizer
CONFIG+=C++11

TRANSLATIONS = lang_en.ts  lang_ru.ts

QMAKE_CXXFLAGS += -DQT_COMPILING_QSTRING_COMPAT_CPP

unix:!mac:QMAKE_CXXFLAGS += -std=c++0x
unix:!mac: LIBS += -rdynamic

win32:QMAKE_LFLAGS_WINDOWS = /SUBSYSTEM:WINDOWS,5.01

win32:RC_ICONS = main.ico
mac:ICON = main.icns

win32:LIBS += -luser32
unix:!mac:LIBS += -lX11 -lXss
Ы
INCLUDEPATH += ui data tools

SOURCES += \
    main.cpp \
    ui/settingswindow.cpp \
    tools/os_api.cpp \
    data/cdatamanager.cpp \
    tools/cfilebin.cpp \
    ui/ctrayicon.cpp \
    ui/statisticwindow.cpp \
    ui/applicationswindow.cpp \
    ui/profileswindow.cpp \
    data/cexternaltrackers.cpp \
    ui/aboutwindow.cpp \
    data/cdbversionconverter.cpp \
    data/cscriptsmanager.cpp \
    ui/app_settingswindow.cpp \
    data/capppredefinedinfo.cpp \
    tools/tools.cpp \
    data/cschedule.cpp \
    ui/schedulewindow.cpp \
    ui/notification_dummy.cpp \
    ui/notificationwindow.cpp \
    data/cupdater.cpp \
    ui/updateavailablewindow.cpp

HEADERS  += \
    ui/settingswindow.h \
    tools/os_api.h \
    data/cdatamanager.h \
    tools/cfilebin.h \
    ui/ctrayicon.h \
    ui/statisticwindow.h \
    ui/applicationswindow.h \
    ui/profileswindow.h \
    data/cexternaltrackers.h \
    ui/aboutwindow.h \
    data/cdbversionconverter.h \
    data/cscriptsmanager.h \
    ui/app_settingswindow.h \
    data/capppredefinedinfo.h \
    tools/tools.h \
    data/cschedule.h \
    ui/schedulewindow.h \
    ui/notification_dummy.h \
    ui/notificationwindow.h \
    data/cupdater.h \
    ui/updateavailablewindow.h

FORMS    += \
    ui/settingswindow.ui \
    ui/statisticwindow.ui \
    ui/applicationswindow.ui \
    ui/profileswindow.ui \
    ui/aboutwindow.ui \
    ui/app_settingswindow.ui \
    ui/schedulewindow.ui \
    ui/notification_dummy.ui \
    ui/notificationwindow.ui \
    ui/updateavailablewindow.ui
