import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: my_status_bar
    height: 50
    color: Qt.rgba(0, 0, 0, 0)
    anchors {
        left: parent.left
        right: parent.right
        top: parent.top
    }
    RowLayout {
        id: button_row
        width: my_status_bar.width
        Button {
            id: home_button
            height: my_status_bar.width
            text: "HOME"
        }
        Button {
            id: weather_button
            height: my_status_bar.height
            text: "WEATHER"
            anchors.left: home_button.right
        }
        Button {
            id: media_button
            height: my_status_bar.height
            text: "MEDIA"
            anchors.left: weather_button.right
        }
    }
}
