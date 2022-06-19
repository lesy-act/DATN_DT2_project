import QtQuick 2.2
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    ListModel {
        id: list_mode
        ListElement {
            name: "1"
            page: ""
        }
        ListElement {
            name: "2"
            page: ""
        }
        ListElement {
            name: "3"
            page: ""
        }
        ListElement {
            name: "first"
            page: ""
        }
        ListElement {
            name: "first"
            page: ""
        }
        ListElement {
            name: "first"
            page: ""
        }
        ListElement {
            name: "first"
            page: ""
        }
        ListElement {
            name: "first"
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
    }

    Button {
        id: privious_button
        anchors {
            right: next_button.left
            rightMargin: 10
            verticalCenter: next_button.verticalCenter
        }
        text: "PREV"
        onClicked: {
            stack_view.pop("Page1.qml")
        }
    }
    Item {
        id: first_item
        RowLayout {
            x: 300
            y: 300
            My_Switch {
                id: first_switch
                onSwitched: {
                    first_lamp.on_machine()
                }
            }
            My_Switch {
                id: second_switch
                anchors.left: first_switch.right
                anchors.leftMargin: 10
                onSwitched: {
                    first_lamp.on_machine()
                }
            }
        }
    }
}
