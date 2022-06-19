import QtQuick 2.15
import QtQuick.Window 2.15
import QtCharts 2.3
import QtQuick.Controls 2.15
import Lamp.Backend 1.0
import QtQuick.Layouts 1.15
import QtQuick.Controls.Styles 1.4

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Do an 3")
    My_Background {}
    My_StatusBar {
        id: first_status_bar
    }
    Loader {
        id: main_loader
        anchors {
            left: parent.left
            right: parent.right
            top: first_status_bar.bottom
            bottom: parent.bottom
        }
        source: "StackViewPage.qml"
    }

    Lamp {
        id: first_lamp
    }
    Lamp {
        id: second_lamp
    }
}
