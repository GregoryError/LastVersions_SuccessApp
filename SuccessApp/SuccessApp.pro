QT += quick
QT += core
CONFIG += c++11
QT += core gui
QT += core gui sql
QT += positioning
QT += network
QT += widgets
#QT += androidextras

#QT += concurrent
#QT += androidextras

#QT += quick qml network positioning

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    backend.cpp \
    myclient.cpp \
    permissions.cpp

RESOURCES += qml.qrc \
    data.qrc

#INCLUDEPATH += C:/new/prefix1/

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    backend.h \
    myclient.h \
    permissions.h

CONFIG += mobitity
MOBILITY =

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
QT += androidextras
    ANDROID_EXTRA_LIBS = \
    C:/Users/gregory/source/Qt/SuccessApp/libcrypto.so \
    C:/Users/gregory/source/Qt/SuccessApp/libssl.so

    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
QT += androidextras
    ANDROID_EXTRA_LIBS = \
    C:/Users/gregory/source/Qt/SuccessApp/libcrypto_64.so \
    C:/Users/gregory/source/Qt/SuccessApp/libssl_64.so

    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
#include(android-openssl.pri)
}

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    ShowPermissionRationale.java \
    issue_report_1.qml \
    issue_report_2.qml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android















































