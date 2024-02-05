HEADERS += $$PWD/File/FileUtils.h \
   $$PWD/Exception.h \
   $$PWD/RandomNumberGenerator.h \
   $$PWD/StringUtils.h \
   $$PWD/StyleSheetEditor/StyleSheetEditor.h \
   $$PWD/DebugLog/DebugLogEntry.h \
   $$PWD/DebugLog/DebugLog.h \
   $$PWD/DebugLog/DebugLogWindow.h \
   $$PWD/DebugLog/DebugLogFilterProxyModel.h \
   $$PWD/ThreadedOperation/ThreadedOperationDialog.h \
   $$PWD/ThreadedOperation/ThreadedOperation.h \
   $$PWD/SystemUtils.h
win32 {
HEADERS += \
   $$PWD/GlobalShortcut/GlobalShortcutManager.h \
   $$PWD/GlobalShortcut/GlobalShortcut.h
}

SOURCES +=  $$PWD/File/FileUtils.cpp \
   $$PWD/Exception.cpp \
   $$PWD/RandomNumberGenerator.cpp \
   $$PWD/StringUtils.cpp \
   $$PWD/StyleSheetEditor/StyleSheetEditor.cpp \
   $$PWD/DebugLog/DebugLog.cpp \
   $$PWD/DebugLog/DebugLogEntry.cpp \
   $$PWD/DebugLog/DebugLogFilterProxyModel.cpp \
   $$PWD/DebugLog/DebugLogWindow.cpp \
   $$PWD/ThreadedOperation/ThreadedOperation.cpp \
   $$PWD/ThreadedOperation/ThreadedOperationDialog.cpp \
   $$PWD/SystemUtils.cpp
win32 {
SOURCES += \
   $$PWD/GlobalShortcut/GlobalShortcut.cpp \
   $$PWD/GlobalShortcut/GlobalShortcutManager.cpp
}


FORMS += $$PWD/StyleSheetEditor/StyleSheetEditor.ui \
   $$PWD/DebugLog/DebugLogWindow.ui \
   $$PWD/ThreadedOperation/ThreadedOperationDialog.ui
TRANSLATIONS += $$PWD/Translations/xmilib_fr.ts
