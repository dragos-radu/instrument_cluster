import QtQuick 2.0

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

        startX: 1213*mainwindow.resize
        startY: 542*mainwindow.resize

        PathLine {
            id: line1
            x:  speed_path.startX - 42*mainwindow.resize
            y: speed_path.startY - 29*mainwindow.resize
        }

        PathLine{
            id: line2
            x: line1.x + 6*mainwindow.resize
            y: line1.y - 35*mainwindow.resize
        }

        PathLine{
            id: line3
            x: line1.x
            y: line1.y
        }
        PathLine
        {
            id: line4
            x: line3.x - 19*mainwindow.resize
            y: line3.y + 25*mainwindow.resize
        }



        fillColor: "transparent"

    }
}

