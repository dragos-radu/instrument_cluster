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

        startX: 260
        startY: 650

        PathLine {
            id: line1
            x:  speed_path.startX - 93
            y: speed_path.startY
        }

        PathArc{
            id: arc1
            x: line1.x - 102
            y: line1.y - 110
            radiusX: 300
            radiusY: 500
        }
        PathLine {
            id: line2
            x:  arc1.x - 25
            y: arc1.y - 140
        }
        PathLine {
            id: line3
            x:  line2.x + 23
            y: line2.y - 130
        }

        PathArc{
            id: arc2
            x: line3.x + 102 //165
            y: line3.y - 125 //145
            radiusX: 300
            radiusY: 500
        }

        PathLine {
            id: line4
            x: arc2.x + 200
            y: arc2.y - 30
        }

        fillColor: "transparent"

    }
}
