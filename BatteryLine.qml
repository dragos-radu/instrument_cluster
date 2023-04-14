import QtQuick 2.0
import QtQuick.Shapes 1.12


Shape{
    id: speed
    anchors.fill: parent

    ShapePath
    {
        id: speed_path
        strokeWidth: 2
        strokeColor: "#e3ffff"

        startX: 140
        startY: 650

        PathLine {
            id: line1
            x:  speed_path.startX - 65
            y: speed_path.startY
        }

        PathArc {
            id: arc1
            x: line1.x - 10
            y: line1.y - 10
            radiusX: 1
            radiusY: 1
        }

        fillColor: "transparent"

    }
}
