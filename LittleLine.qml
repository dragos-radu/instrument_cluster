import QtQuick 2.0

import QtQuick 2.0
import QtQuick.Shapes 1.12


Shape{
    id: littlespeed
    anchors.fill: parent

    ShapePath
    {
        id: speed_path
        strokeWidth: 2
        strokeColor: "#131454"

        startX: 268
        startY: 620

        PathLine {
            id: line1
            x:  speed_path.startX - 83
            y: speed_path.startY
        }

        PathArc{
            id: arc1
            x: line1.x - 92
            y: line1.y - 100
            radiusX: 300
            radiusY: 500
        }
        PathLine {
            id: line2
            x:  arc1.x - 20
            y: arc1.y - 130
        }
        PathLine {
            id: line3
            x:  line2.x + 23
            y: line2.y - 120
        }

        PathArc{
            id: arc2
            x: line3.x + 82
            y: line3.y - 100
            radiusX: 300
            radiusY: 500
        }

        PathLine {
            id: line4
            x: arc2.x + 196
            y: arc2.y - 30
        }

        fillColor: "transparent"

    }
}
