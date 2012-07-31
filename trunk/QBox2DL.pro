#-----------------------------------------------------------------------------
#
# qbox2dl : Box2D Lite + Qt
#
# http://code.google.com/p/qbox2dl/
# code license : GNU GPL v3
#
# Box2D Lite : https://code.google.com/p/box2d/downloads/list
# Qt 4 : http://qt.nokia.com/downloads
#
#-----------------------------------------------------------------------------

TARGET = QBox2DL

TEMPLATE = app

QT += core
QT += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#-----------------------------------------------------------------------------
# win32 + gcc
win32:win32-g++: LIBS += -lopengl32
win32:win32-g++: INCLUDEPATH += .
win32:win32-g++: LIBS += -L./winlib
win32:win32-g++: LIBS += -lglut32win # use win32 glut.

# win32 + visual studio
### win32:win32-msvc2005:
### win32:win32-msvc2008:
### win32:win32-msvc2010:

# install development library of opengl & glut
#  fedora : sudo yum install freeglut-devel
#  debian, ubuntu : sudo apt-get install freeglut3 freeglut3-dev
unix:linux-g++: LIBS += -lGL -lGLU
unix:linux-g++: LIBS += -lglut

# mac os x + xcode (how about macport?)
# macx:

#-----------------------------------------------------------------------------

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

