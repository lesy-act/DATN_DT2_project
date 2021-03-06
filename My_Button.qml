import QtQuick 2.1

Rectangle  {
    property alias text: textItem.text

    width: 100; height: 30
    color: "#a9a9a9"
    border.width: 1
    radius: 5
    smooth: true

    gradient: Gradient  {
        GradientStop  { position: 0.0; color: "darkGray" }
        GradientStop  { position: 0.5; color: "black" }
        GradientStop  { position: 1.0; color: "darkGray" }
    }

    Text  {
        id: textItem
        anchors.centerIn: parent
        font.pointSize: 20
        color: "white"
    }

}
