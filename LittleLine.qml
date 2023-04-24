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
            y: arc1.y - 120*mainwindow.resize
        }
        PathLine {
            id: line3
            x:  line2.x + 23*mainwindow.resize
            y: line2.y - 130*mainwindow.resize
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

        fillColor: "transparent"

    }
}
