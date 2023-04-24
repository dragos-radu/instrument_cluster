import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape{
    id: midshape
    anchors.fill: parent

    ShapePath{
        id: path
        startX: 180*mainwindow.resize
        startY: 380*mainwindow.resize
        strokeColor: "white"
        strokeWidth: 5
        fillColor: "transparent"

        PathLine{
            id: line1
            x: path.startX + 50*mainwindow.resize
            y: path.startY + 30*mainwindow.resize
        }

        PathLine{
            id:line2
            x:line1.x + 150*mainwindow.resize
            y: line1.y
        }
    }
}
