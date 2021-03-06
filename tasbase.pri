############################################################################
## 
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies). 
## All rights reserved. 
## Contact: Nokia Corporation (testabilitydriver@nokia.com) 
## 
## This file is part of Testability Driver Qt Agent
## 
## If you have questions regarding the use of this file, please contact 
## Nokia at testabilitydriver@nokia.com . 
## 
## This library is free software; you can redistribute it and/or 
## modify it under the terms of the GNU Lesser General Public 
## License version 2.1 as published by the Free Software Foundation 
## and appearing in the file LICENSE.LGPL included in the packaging 
## of this file. 
## 
############################################################################


TAS_VERSION=0.0.0

#CONFIG += silent
# QMAKE_CXXFLAGS += -Wall -Werror

unix: {
isEmpty(PREFIX) {
PREFIX = /usr
}
isEmpty(PREFIX_PLUGINS) {
PREFIX_PLUGINS = $$[QT_INSTALL_PLUGINS]/
}


TAS_TARGET_BIN=$$PREFIX/bin
TAS_TARGET_LIB=$$PREFIX/lib
TAS_TARGET_STEPS=/etc/qt_testability/cucumber
TAS_TARGET_PLUGIN=$$PREFIX_PLUGINS
}
symbian: {
TAS_TARGET_BIN=/qttas/bin
TAS_TARGET_LIB=/qttas/lib
TAS_TARGET_STEPS=/qttas/cucumber
TAS_TARGET_PLUGIN=$$[QT_INSTALL_PLUGINS]/
INCLUDEPATH += $$APP_LAYER_SYSTEMINCLUDE
EXPORT_DIR=/epoc32/include/ext/app/exttesttools/%1
}
win32: {
TAS_TARGET_BIN=/qttas/bin
TAS_TARGET_LIB=/qttas/lib
TAS_TARGET_STEPS=/qttas/cucumber
TAS_TARGET_PLUGIN=$$[QT_INSTALL_PLUGINS]/
}
macx: {
TAS_TARGET_BIN=/usr/local/bin
TAS_TARGET_LIB=/usr/lib
TAS_TARGET_STEPS=/etc/qt_testability/cucumber
TAS_TARGET_PLUGIN=$$[QT_INSTALL_PLUGINS]/
}
