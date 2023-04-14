import QtQuick 2.0
import QtQuick.Shapes 1.12



ShapePath
{
    id: speed_path
    strokeWidth: 5
    strokeColor: "transparent"

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
        x: line3.x + 102
        y: line3.y - 125
        radiusX: 300
        radiusY: 500
    }

    PathLine {
        id: line4
        x:  arc2.x + 200
        y: arc2.y - 30
    }

    PathLine{
        id: line5
        y: arc2.y +10
        x: line4.x + 15
    }

    PathLine{
        id: line6
        y: line5.y + 30
        x: line5.x - 195
    }

    PathArc{
        id: arc3
        x: line3.x + 50
        y: line3.y
        radiusX: 300
        radiusY: 500
        direction: PathArc.Counterclockwise
    }

    PathLine {
        id: line7
        x:  line2.x + 50
        y: line2.y
    }

    PathLine {
        id: line8
        x:  arc1.x + 44
        y: arc1.y - 30
    }

    PathArc{
        id: arc4
        x: line1.x + 25
        y: line1.y - 45
        radiusX: 300
        radiusY: 500
        direction: PathArc.Counterclockwise
    }

    PathLine {
        id: line9
        x:  speed_path.startX + 15
        y: arc4.y
    }
}


