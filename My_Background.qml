import QtQuick 2.0

Rectangle {
    id: my_back_ground
    width: 640
    height: 480
    anchors {
        centerIn: parent
    }
    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: "#b3b3cc"
        }
        GradientStop {
            position: 1.0
            color: "#47476b"
        }
    }
}
