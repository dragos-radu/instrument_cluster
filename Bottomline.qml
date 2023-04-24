import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape{
    id: bottomshape
    anchors.fill: parent

    ShapePath{
        id: path
        startX: 643*mainwindow.resize
        startY: 620*mainwindow.resize
        strokeColor: "white"
        strokeWidth: 2
        fillColor: "transparent"

        PathLine{
            id: line1
            x: path.startX + 250*mainwindow.resize
            y: path.startY
        }
    }
}
