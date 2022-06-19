import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    anchors.fill: parent
    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: "Page1.qml"
    }
}
