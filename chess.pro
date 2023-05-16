QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    chessboard.cpp \
    chessclient.cpp \
    chessserver.cpp \
    connectiondialog.cpp \
    main.cpp \
    mainwindow.cpp \
    packet.cpp \
    updialog.cpp

HEADERS += \
    chessboard.h \
    chessclient.h \
    chessserver.h \
    connectiondialog.h \
    mainwindow.h \
    packet.h \
    updialog.h \
    utils.h

FORMS += \
    connectiondialog.ui \
    mainwindow.ui \
    updialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    chess.pro.user \
    image/bg.png \
    image/black_bishop.png \
    image/black_king.png \
    image/black_knight.png \
    image/black_pawn.png \
    image/black_queen.png \
    image/black_rook.png \
    image/white_bishop.png \
    image/white_king.png \
    image/white_knight.png \
    image/white_pawn.png \
    image/white_queen.png \
    image/white_rook.png

RESOURCES += \
    image.qrc
