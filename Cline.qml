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

        startX: 260*mainwindow.resize
        startY: 650*mainwindow.resize

        PathLine {
            id: line1
            x:  speed_path.startX - 93*mainwindow.resize
            y: speed_path.startY
        }

        PathArc{
            id: arc1
            x: line1.x - 102*mainwindow.resize
            y: line1.y - 110*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
        }
        PathLine {
            id: line2
            x:  arc1.x - 25*mainwindow.resize
            y: arc1.y - 140*mainwindow.resize
        }
        PathLine {
            id: line3
            x:  line2.x + 23*mainwindow.resize
            y: line2.y - 130*mainwindow.resize
        }

        PathArc{
            id: arc2
            x: line3.x + 102*mainwindow.resize //165
            y: line3.y - 125*mainwindow.resize //145
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
        }

        PathLine {
            id: line4
            x: arc2.x + 200*mainwindow.resize
            y: arc2.y - 30*mainwindow.resize
        }

        fillColor: "transparent"

    }
}
