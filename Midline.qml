import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape{
    id: midshape
    anchors.fill: parent

    ShapePath{
        id: path
        startX: 180
        startY: 380
        strokeColor: "white"
        strokeWidth: 5
        fillColor: "transparent"

        PathLine{
            id: line1
            x: path.startX + 50
            y: path.startY + 30
        }

        PathLine{
            id:line2
            x:line1.x + 150
            y: line1.y
        }
    }
}
