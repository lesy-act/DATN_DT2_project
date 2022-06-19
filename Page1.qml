import QtQuick 2.2
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    ListModel {
        id: list_mode
        ListElement {
            name: "BED ROOM"
            page: "BedRoom.qml"
        }
        ListElement {
            name: "BATH ROOM"
            page: ""
        }
        ListElement {
            name: "LIVING ROOM"
            page: ""
        }
        ListElement {
            name: "STAIR"
            page: ""
        }
    }
    GridView {
        id: grid_view
        anchors.fill: parent
        model: list_mode
        cellHeight: 140
        cellWidth: 140
        delegate: Rectangle {
            width: 100
            height: 100
            color: "Grey"
            radius: 2
            Text {
                id: my_text
                text: name
                color: "White"
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    main_loader.source = page
                }
            }
        }
    }
    Button {
        id: next_button
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "NEXT"
        onClicked: {
            stack_view.push("Page2.qml")
        }
    }

    Button {
        id: privious_button
        anchors {
            right: next_button.left
            rightMargin: 10
            verticalCenter: next_button.verticalCenter
        }
        text: "PREV"
    }
}
