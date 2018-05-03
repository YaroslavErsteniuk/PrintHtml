# -------------------------------------------------
# QMake project for the PrintHtml program
# -------------------------------------------------
TARGET = PrintHtml
TEMPLATE = app
CONFIG += precompile_header
CONFIG += c++1z
INCLUDEPATH += ../includes ../common
DEPENDPATH += ../includes ../common
PRECOMPILED_HEADER = stable.h
precompile_header:!isEmpty(PRECOMPILED_HEADER):DEFINES += USING_PCH
QT += network webkit core gui

greaterThan(QT_MAJOR_VERSION, 4): LIBS+= $(QTDIR)\lib\libQt5WebKit.dll.a \
     $(QTDIR)\lib\libQt5WebKitWidgets.dll.a
greaterThan(QT_MAJOR_VERSION, 4): QT += printsupport
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
HEADERS = stable.h \
    globals.h \
    printhtml.h
SOURCES = main.cpp \
    printhtml.cpp
FORMS =
RESOURCES =

DISTFILES += \
    LICENSE \
    README.md \
    .gitignore
