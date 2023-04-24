import QtQuick 2.0

import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape{
    id:valueleft

    property double val: mainwindow.val_grad/200
    property double bot: val < 0.163 ? val : 0.163
    property double topper: val >= 0.163 ? val : 0.163

    ShapePath
    {
        id: speed_val
        strokeWidth: 5
        strokeColor: "transparent"

        startX: 1020*mainwindow.resize
        startY: 650*mainwindow.resize

        PathLine {
            id: line1r
            x:  speed_val.startX + 93*mainwindow.resize
            y: speed_val.startY
        }

        PathArc{
            id: arc1r
            x: line1r.x + 102*mainwindow.resize
            y: line1r.y - 110*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
            direction: PathArc.Counterclockwise
        }
        PathLine {
            id: line2r
            x:  arc1r.x + 25*mainwindow.resize
            y: arc1r.y - 140*mainwindow.resize
        }
        PathLine {
            id: line3r
            x:  line2r.x - 23*mainwindow.resize
            y: line2r.y - 130*mainwindow.resize
        }

        PathArc{
            id: arc2r
            x: line3r.x - 102*mainwindow.resize
            y: line3r.y - 125*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize
            direction: PathArc.Counterclockwise
        }

        PathLine {
            id: line4r
            x:  arc2r.x - 200*mainwindow.resize
            y: arc2r.y - 30*mainwindow.resize
        }

        PathLine{
            id: line5r
            y: arc2r.y +10*mainwindow.resize
            x: line4r.x - 15*mainwindow.resize
        }

        PathLine{
            id: line6r
            y: line5r.y + 30*mainwindow.resize
            x: line5r.x + 195*mainwindow.resize
        }

        PathArc{
            id: arc3r
            x: line3r.x - 50*mainwindow.resize
            y: line3r.y
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize

        }

        PathLine {
            id: line7r
            x:  line2r.x - 50*mainwindow.resize
            y: line2r.y
        }

        PathLine {
            id: line8r
            x:  arc1r.x - 44*mainwindow.resize
            y: arc1r.y - 30*mainwindow.resize
        }

        PathArc{
            id: arc4r
            x: line1r.x - 25*mainwindow.resize
            y: line1r.y - 45*mainwindow.resize
            radiusX: 300*mainwindow.resize
            radiusY: 500*mainwindow.resize

        }

        PathLine {
            id: line9r
            x:  speed_val.startX - 15*mainwindow.resize
            y: arc4r.y
        }
        fillGradient:  ConicalGradient{
            id:gradi
            centerX: 980*mainwindow.resize
            centerY: 400*mainwindow.resize
            angle: 270
            GradientStop { position: 0.0; color: "transparent" }  //#14536e
            GradientStop { position: valueleft.bot-0.0001; color: "transparent" }
            GradientStop { position: valueleft.bot; color: valueleft.bot != 0.163 ? "#039c59" : "#14536e"   }
            GradientStop { position: valueleft.topper; color: valueleft.topper != 0.163 ? "blue" : "#14536e" }
            GradientStop { position: valueleft.topper + 0.001; color: "transparent" }
            GradientStop { position: 0.60; color: "transparent" }
        }


    }
    Behavior on topper{
        NumberAnimation{
            duration: 1000
        }
    }

    Behavior on bot {
        NumberAnimation{
            duration: 1000
        }
    }
}

