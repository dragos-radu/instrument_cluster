import QtQuick 2.0
import QtQuick.Shapes 1.12


Shape{
    id: circlespeed
    anchors.fill: parent

    ShapePath
    {
        id: speed_path
        strokeWidth: 2
        strokeColor: "transparent"

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

        PathLine{
            id:line5
            x: line4.x + 200
            y:line4.y
        }
        PathLine{
            id:line6
            x: line5.x
            y:line5.y + 400
        }

        fillGradient: RadialGradient {
                           centerX: 190; centerY: 625
                           centerRadius: 400
                           focalX: centerX; focalY: centerY
                           spread: RadialGradient.ReflectSpread
                           GradientStop { position: 0; color: "blue" }
                           GradientStop { position: 0.15; color: "transparent" }
        }
    }
    opacity: 0.8
}
