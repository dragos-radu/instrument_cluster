import QtQuick 2.0

import QtQuick 2.0
import QtQuick.Shapes 1.12


Shape{
    id: speed
    anchors.fill: parent

    ShapePath
    {
        id: speed_path
        strokeWidth: 1
        strokeColor: "#e3ffff"

        startX: 1238
        startY: 400

        PathLine {
            id: line1
            x:  speed_path.startX - 47
            y: speed_path.startY
        }

        PathLine{
            id: line2
            x: line1.x - 7
            y: line1.y - 35
        }

        PathLine{
            id: line3
            x: line1.x
            y: line1.y
        }
        PathLine
        {
            id: line4
            x: line3.x - 7
            y: line3.y + 35
        }



        fillColor: "transparent"

    }
}

