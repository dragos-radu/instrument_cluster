import QtQuick 2.0

import QtQuick 2.0
import QtQuick.Shapes 1.12

Shape{
    property double gradient_val: 0
    property double counter: mainwindow.val_grad/100

    id:valueleft

    ShapePath
    {
        id: speed_val
        strokeWidth: 5
        strokeColor: "transparent"

        startX: 1020
        startY: 650

        PathLine {
            id: line1r
            x:  speed_val.startX + 93
            y: speed_val.startY
        }

        PathArc{
            id: arc1r
            x: line1r.x + 102
            y: line1r.y - 110
            radiusX: 300
            radiusY: 500
            direction: PathArc.Counterclockwise
        }
        PathLine {
            id: line2r
            x:  arc1r.x + 25
            y: arc1r.y - 140
        }
        PathLine {
            id: line3r
            x:  line2r.x - 23
            y: line2r.y - 130
        }

        PathArc{
            id: arc2r
            x: line3r.x - 102
            y: line3r.y - 125
            radiusX: 300
            radiusY: 500
            direction: PathArc.Counterclockwise
        }

        PathLine {
            id: line4r
            x:  arc2r.x - 200
            y: arc2r.y - 30
        }

        PathLine{
            id: line5r
            y: arc2r.y +10
            x: line4r.x - 15
        }

        PathLine{
            id: line6r
            y: line5r.y + 30
            x: line5r.x + 195
        }

        PathArc{
            id: arc3r
            x: line3r.x - 50
            y: line3r.y
            radiusX: 300
            radiusY: 500

        }

        PathLine {
            id: line7r
            x:  line2r.x - 50
            y: line2r.y
        }

        PathLine {
            id: line8r
            x:  arc1r.x - 44
            y: arc1r.y - 30
        }


        PathArc{
            id: arc4r
            x: line1r.x - 25
            y: line1r.y - 45
            radiusX: 300
            radiusY: 500

        }

        PathLine {
            id: line9r
            x:  speed_val.startX - 15
            y: arc4r.y
        }

        fillGradient:  ConicalGradient{
            id:gradi
            centerX: 980
            centerY: 400
            angle: -90
            GradientStop { position: 0.0; color: "#14536e" }
            GradientStop { position: valueleft.gradient_val; color: "blue" }
            GradientStop { position: valueleft.gradient_val + 0.001; color: "transparent" }
            GradientStop { position: 0.60; color: "transparent" }
        }
    }

    Behavior on gradient_val {
        NumberAnimation{
            duration: 500
        }
    }

    onCounterChanged: {
        //console.log(Math.atan(Infinity))
        if(valueleft.counter <= 0.20){
            valueleft.gradient_val = valueleft.counter / 2.5
        }
        else if(valueleft.counter > 0.20 && valueleft.counter <= 0.40){
            valueleft.gradient_val = valueleft.counter / 2.5
        }
        else if(valueleft.counter > 0.40 && valueleft.counter <=0.60){
            valueleft.gradient_val = valueleft.counter / 2.5 + (valueleft.counter - 0.40)*0.08
        }
        else if(valueleft.counter > 0.6 && valueleft.counter <= 1){
            valueleft.gradient_val = valueleft.counter / 2.34375 - (valueleft.counter - 0.6)* 0.2041
        }
        else if(valueleft.counter > 1 && valueleft.counter <=1.4){
            valueleft.gradient_val = valueleft.counter /2.8985 - (valueleft.counter - 1)* 0.1575
        }
        else if(valueleft.counter > 1.4 && valueleft.counter <= 1.8){
            valueleft.gradient_val = valueleft.counter / 3.3333 - (valueleft.counter - 1.4) * 0.0125
        }
    }


   /* NumberAnimation{
        id: anim
        target: valueleft
        properties: "gradient_val"
        to: valueleft.counter
        duration: 500
    }*/




}

