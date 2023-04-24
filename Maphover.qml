import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12



/*Rectangle {
    id: rect
    width: 600
    height: 500
    radius: 250
    visible: true // hide it!!!
    opacity: 1

    gradient: RadialGradient {
        GradientStop { position: 0.32; color: "transparent" }
        GradientStop { position: 0.33; color: "transparent" }
        GradientStop { position: 0.52; color: "#090909" }

    }



}*/
Shape {

    ShapePath {
        startX: 1*mainwindow.resize
        startY: -400*mainwindow.resize
        PathArc {
            x: 0
            y: -400*mainwindow.resize
            useLargeArc: true
            radiusX: 500*mainwindow.resize
            radiusY: 350*mainwindow.resize


        }
        fillGradient: RadialGradient {

            centerRadius: 420*mainwindow.resize
            centerX: 0
            centerY: 0

            GradientStop { position: 0.32; color: "transparent" }
            GradientStop { position: 0.62; color: "#090909" }

        }
        strokeColor: "transparent"
    }


}


