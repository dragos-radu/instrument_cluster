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

        startX: 268*mainwindow.resize
        startY: 620*mainwindow.resize

        PathLine {
            id: line1
            x:  speed_path.startX - 83*mainwindow.resize
            y: speed_path.startY
        }

        PathArc{
            id: arc1
            x: line1.x - 92*mainwindow.resize
            y: line1.y - 100*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
        }
        PathLine {
            id: line2
            x:  arc1.x - 20*mainwindow.resize
            y: arc1.y - 130*mainwindow.resize
        }
        PathLine {
            id: line3
            x:  line2.x + 23*mainwindow.resize
            y: line2.y - 120*mainwindow.resize
        }

        PathArc{
            id: arc2
            x: line3.x + 82*mainwindow.resize
            y: line3.y - 100*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
        }

        PathLine {
            id: line4
            x: arc2.x + 196*mainwindow.resize
            y: arc2.y - 30*mainwindow.resize
        }

        PathLine{
            id:line5
            x: line4.x + 200*mainwindow.resize
            y:line4.y
        }
        PathLine{
            id:line6
            x: line5.x
            y:line5.y + 400*mainwindow.resize
        }

        fillGradient: RadialGradient {
                           centerX: 190*mainwindow.resize; centerY: 625*mainwindow.resize
                           centerRadius: 400*mainwindow.resize
                           focalX: centerX; focalY: centerY
                           spread: RadialGradient.ReflectSpread
                           GradientStop { position: 0; color: "blue" }
                           GradientStop { position: 0.15; color: "transparent" }
        }
    }
    opacity: 0.8
}
