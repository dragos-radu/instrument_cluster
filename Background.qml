import QtQuick 2.0
import QtQuick.Shapes 1.12


Shape{
    id: speed
    anchors.fill: parent

    ShapePath
    {
        id: speed_path
        strokeWidth: 2
        strokeColor: "transparent"

        startX: 640
        startY: 650

        PathLine {
            id: line1
            x:  speed_path.startX - 473
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
            x: line3.x + 102
            y: line3.y - 125
            radiusX: 300
            radiusY: 500
        }

        PathLine {
            id: line4
            x: arc2.x + 200
            y: arc2.y - 30
        }
        PathLine {
            id: line5
            x: 640
            y: line4.y
        }

        fillGradient: LinearGradient{
            x1: 20
            y1: 340
            x2: 640
            y2: 460
            GradientStop {
                position: 0.0
                color: "#3c3b3c"
            }


            GradientStop {
                position: 0.43
                color: "#090909"
            }

        }

    }
}
