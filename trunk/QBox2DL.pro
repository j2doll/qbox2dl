#-------------------------------------------------
#
# Box2D Lite (Qt)
#
#-------------------------------------------------

TARGET = QBox2DL

TEMPLATE = app

QT += core
QT += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

LIBS += -lopengl32

win32:win32-g++: INCLUDEPATH += .
win32:win32-g++: LIBS += -L./winlib
win32:win32-g++: LIBS += -lglut32win

# win32:win32-msvc2005:
# win32:win32-msvc2008:
# win32:win32-msvc2010:

HEADERS  += \
    Arbiter.h \
    Body.h \
    Joint.h \
    MathUtils.h \
    World.h

SOURCES += \
    Arbiter.cpp \
    Body.cpp \
    Collide.cpp \
    Joint.cpp \
    main.cpp \
    World.cpp

