import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.12
import Process 1.0
import QtLocation 5.12
import QtPositioning 5.12
//radial gradient mic sa indice viteza

Window {

    id: mainwindow
    visible: true
    minimumWidth: 1280
    maximumWidth: 1280
    maximumHeight: 800
    minimumHeight: 800
    title: qsTr("Hello World")
    color: "#090909"
    flags: Qt.FramelessWindowHint | Qt.Window

    property double val_grad: 10
    property var pndr: "D"
    property double range: 100
    property double temp: 11

    Background{
        id:bleft
    }
    Background{
        id: bright
        transform:  Matrix4x4 {
            matrix: Qt.matrix4x4( -1, 0, 0, line_tach.width, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)}
    }

    Criclespeed{

    }

    Item{
        Tachoval{
            id: speedval
        }
    }

    Item{
        Speedval{
            id: tachval
        }
        transform: Scale {
            origin.x: width/2
            origin.y: height/2
            xScale: -1
        }
    }



    Shape{
        id:opacitymaskleft
        Cmask{
            fillGradient:  RadialGradient {
                centerX: 335
                centerY: 392
                centerRadius: 670
                focalX: centerX
                focalY: centerY
                focalRadius: 10
                spread: ShapeGradient.RepeatSpread

                GradientStop {
                    position: 0
                    color: "#090909"
                }
                GradientStop {
                    position: 0.35
                    color: "#090909"
                }


                GradientStop {
                    position: 0.40
                    color: "transparent"
                }
            }
        }
    }

    Shape{
        id:opacitymaskright
        Cmask{
            fillGradient:  RadialGradient {
                centerX: 335
                centerY: 392
                centerRadius: 670
                focalX: centerX
                focalY: centerY
                focalRadius: 10
                spread: ShapeGradient.RepeatSpread

                GradientStop {
                    position: 0
                    color: "#090909"
                }
                GradientStop {
                    position: 0.35
                    color: "#090909"
                }


                GradientStop {
                    position: 0.40
                    color: "transparent"
                }
            }
        }
        transform: Scale {
            origin.x: width/2
            origin.y: height/2
            xScale: -1
        }
    }


    Shape{
        id:mask2
        opacity: 0.2
        Cmask{
            id: cmask2
            fillColor: "#090909"
        }
        GaussianBlur {
            anchors.fill: mask2
            source: mask2
            radius: 100
            samples: 20

        }
    }


    Cline{
        id: line_speed
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: line_speed
            radius: 8
            samples: 28
            color: "#a6fffe"
            source: line_speed
        }
    }

    LittleLine{
        id: llspeed
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: llspeed
            radius: 2
            samples: 28
            color: "blue"
            source: llspeed
        }
    }

    LittleLine{
        id: lltach
        transform:  Matrix4x4 {
            matrix: Qt.matrix4x4( -1, 0, 0, lltach.width, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)}
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: llspeed
            radius: 2
            samples: 28
            color: "blue"
            source: llspeed
        }
    }


    Cline{
        id: line_tach
        transform:  Matrix4x4 {
            matrix: Qt.matrix4x4( -1, 0, 0, line_tach.width, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)}
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: line_tach
            radius: 8
            samples: 28
            color: "#a6fffe"
            source: line_tach
        }
    }
    Shape{
        visible: false
        id: ceva
        opacity: 0.3
        transform:  Matrix4x4 {
            matrix: Qt.matrix4x4( -1, 0, 0, line_tach.width, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)}


        ShapePath
        {
            id: speed_p
            strokeWidth: 5
            strokeColor: "white"
            startX: 0
            startY: 0

            PathLine{
                x:1000
                y:0
            }

            PathLine{
                x:1000
                y:800
            }

            PathLine{
                x:0
                y:800
            }
            fillGradient:  ConicalGradient{
                centerX: 300
                centerY: 400
                angle: 0
                GradientStop {
                    position: 0.0
                    color: "blue"
                }

                GradientStop {
                    position: 0.05
                    color: "blue"
                }
                GradientStop {
                    position: 0.06
                    color: "#090909"
                }


                GradientStop {
                    position: 0.9
                    color: "#090909"
                }
            }
        }
    }
    Process {
        id: process1

        property string outp: ""


        onStarted: print("Process1 started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            process1.outp = process1.readAll()

            mainwindow.val_grad = parseFloat(outp)
            console.log(mainwindow.val_grad)
        }
    }
    Component.onCompleted: {

        //process1.start("/home/dragos/Desktop/instrument_cluster/process/rand.py",[" "])

    }
    Rectangle{
        visible: false
        color: "white"
        anchors.centerIn: parent
        width: 80
        height: 80
        Text {
            anchors.centerIn: parent
            id: texta
            text: qsTr(process1.outp)
            color: "black"
            font.pixelSize: 12
        }
    }
    Map{
        id: map

        plugin: Plugin{
            id: mapplugin
            name:"mapboxgl"
        }
        center: QtPositioning.coordinate(44.40014336394646, 26.049231536095185)
        tilt: 80
        activeMapType: supportedMapTypes[7]
        anchors.fill: maphover
        zoomLevel: 18
        bearing: -10
        Maphover{
            anchors.centerIn: parent
            id:rect1
        }
    }
    Midline{
        id: midlineleft
    }
    Glow{
        anchors.fill: midlineleft
        radius: 7
        samples: 28
        color: "lightblue"
        source: midlineleft
        spread: 0.5
    }

    Midline{
        id: midlineright
        transform: Scale {
            origin.x: width/2
            origin.y: height/2
            xScale: -1
        }
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: midlineright
            radius: 7
            samples: 28
            color: "lightblue"
            source: midlineright
            //spread: 0.5
        }
    }



    Rectangle{
        id: maphover
        anchors.centerIn: parent
        width: 600
        height: 450
        radius: 250
        visible: false // hide it!!!
        opacity: 1
    }



    Image {
        height: 21
        width: 600
        anchors.bottom: maphover.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        id: cover
        source: "cover.jpg"
    }

    Text {
        id: speedtxt
        text: Math.floor(mainwindow.val_grad)
        color: "white"
        font.pixelSize: 95
        font.family: "Sans-serif"
        // font.bold: true
        x: mainwindow.val_grad < 10 ? 265 : 235
        y: 300
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: speedtxt
            radius: 7
            samples: 28
            color: "white"
            source: speedtxt

        }
    }

    Text {
        id: pndrtxt
        text: mainwindow.pndr
        color: "white"
        font.pixelSize: 95
        font.family: "Sans-serif"
        // font.bold: true
        x: 940
        y: 300
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: pndrtxt
            radius: 7
            samples: 28
            color: "white"
            source: pndrtxt

        }
    }


    Text {
        id: kmtxt
        text: "km/h"
        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: false
        x: 325
        y: 415
    }

    Text {
        id: time
        text: new Date().toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'})

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: false

        x: 385
        y: 625


        Timer{
            property var cnt: 0
            id: timertime
            running: true
            repeat: true
            interval: cnt == 0 ? ( 60000 - new Date().getSeconds()%60*1000) : 60000
            onTriggered: {time.text = new Date().toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'}); cnt = 1}
        }
    }

    Text {
        id: rangetxt
        text: range + " km"

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: false
        x: 815
        y: 625
    }

    Text {
        id: temptxt
        text: temp + " °C"

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: false
        x: 605
        y: 625
    }


    Image {
        id: elstation
        source: "charging-station.png"
        width: 15
        height: 20

        x: 797
        y:625
    } //





    Bottomline{

    }

    Bottomline{
        transform: Scale {
            origin.x: width/2
            origin.y: height/2
            xScale: -1
        }
    }




}
