import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12
import QtQuick.Controls 2.12
import Process 1.0
import QtLocation 5.12
import QtPositioning 5.12

Window {
    property var scale: 1
    property var m_width: 1280*scale
    property var m_height: 800*scale
    id: mainwindow
    visible: true
    minimumWidth: m_width
    maximumWidth: m_width
    maximumHeight: m_height
    minimumHeight: m_height
    title: qsTr("Hello World")
    color: "#090909"
    visibility: Window.FullScreen

    property double val_grad: 4
    property var pndr: "D"
    property double range: 86
    property double temp: 22.8
    property double latitude: 41.9076104
    property double longitude: 12.4986381
    property double anglemap: 0
    property var battery_percent_val: 36
    property double kms: 4003.8
    property double amperage: val_grad
    property var warning: 2
    property var resize: mainwindow.width/1280

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
                centerX: 335*mainwindow.resize
                centerY: 392*mainwindow.resize
                centerRadius: 670*mainwindow.resize
                focalX: centerX
                focalY: centerY
                focalRadius: 10*mainwindow.resize
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
                centerX: 335*mainwindow.resize
                centerY: 392*mainwindow.resize
                centerRadius: 670*mainwindow.resize
                focalX: centerX
                focalY: centerY
                focalRadius: 10*mainwindow.resize
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
            radius: 100*mainwindow.resize
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
            //console.log(mainwindow.val_grad)
        }
    }

    Process {
        id: processmap

        property string coordinates: ""


        onStarted: print("Processmap started")
        onFinished:{

            print("Closed")
        }

        onErrorOccurred: console.log("Error Ocuured: ", error)

        onReadyReadStandardOutput: {
            processmap.coordinates = processmap.readAll()

            var mapCoordinates = coordinates.split(" ")
            mainwindow.latitude = mapCoordinates[0]
            mainwindow.longitude = mapCoordinates[1]
            mainwindow.anglemap = mapCoordinates[2]
            console.log(mainwindow.latitude, mainwindow.longitude, mainwindow.anglemap)
        }
    }

    Component.onCompleted:
    {
        process1.start("process/rand.py",[" "])
        processmap.start("process/loc.py",[" "])
    }

    Map
    {
        id: map

        plugin: Plugin
        {
            id: mapplugin
            name:"mapboxgl"
        }
        center: QtPositioning.coordinate(mainwindow.latitude, mainwindow.longitude)
        tilt: 86
        activeMapType: supportedMapTypes[7]
        anchors.fill: maphover
        zoomLevel: 19
        bearing: anglemap

        Behavior on center{
            CoordinateAnimation{
                duration: 1000
                easing.type: Easing.Linear
            }
        }

        Behavior on bearing{
            PropertyAnimation{
                duration: 1000
                easing.type: Easing.Linear
            }
        }

        MapQuickItem{
            id: icon
            anchorPoint: Qt.point(16, 16) // set the anchor point of the icon
            sourceItem: Image {
                width: 30
                height: 30
                source: "direction.png" // set the source image of the icon
            }
            coordinate: map.center
        }


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
        width: 600*mainwindow.resize
        height: 450*mainwindow.resize
        radius: 250*mainwindow.resize
        visible: false
        opacity: 1
    }



    Image {
        height: 21*mainwindow.resize
        width: 600*mainwindow.resize
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
        x: mainwindow.val_grad > 10 ? (mainwindow.val_grad >= 100 ? 215*mainwindow.resize : 235*mainwindow.resize) : 265*mainwindow.resize
        y: 300*mainwindow.resize
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
        x: 940*mainwindow.resize
        y: 300*mainwindow.resize
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
        x: 325*mainwindow.resize
        y: 415*mainwindow.resize
    }

    Rectangle{
        color: "transparent"
        width: 93
        height: 25
        anchors{
            right: parent.right
            top: parent.top
            rightMargin: 168*mainwindow.resize
            topMargin: 653*mainwindow.resize
        }
        Text {
            id: time
            text: new Date().toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'})

            color: "white"
            font.pixelSize: 20
            font.family: "Sans-serif"
            font.bold: false
            anchors.centerIn: parent


            Timer{
                property var cnt: 0
                id: timertime
                running: true
                repeat: true
                interval: cnt == 0 ? ( 60000 - new Date().getSeconds()%60*1000) : 60000
                onTriggered: {time.text = new Date().toLocaleTimeString([], {hour: '2-digit', minute: '2-digit'}); cnt = 1}
            }
        }
    }

    Rectangle{
        color: "transparent"
        width: 93
        height: 25
        anchors{
            right: parent.right
            top: parent.top
            rightMargin: 387*mainwindow.resize
            topMargin: 624*mainwindow.resize
        }
        Text {
            id: rangetxt
            text: range + " km"

            color: "white"
            font.pixelSize: 20
            font.family: "Sans-serif"
            font.bold: false
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }

        Image {
            id: elstation
            source: "charging-station.png"
            width: 15
            height: 20

            anchors.right: rangetxt.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 4

        } //
    }

    Rectangle{
        color: "transparent"
        width: 93
        height: 25
        anchors{
            left: parent.left
            top: parent.top
            leftMargin: 387*mainwindow.resize
            topMargin: 624*mainwindow.resize
        }

        Text {
            id: kilometers
            text: kms + " km"

            color: "white"
            font.pixelSize: 20
            font.family: "Sans-serif"
            font.bold: false
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter

        }
    }


    Rectangle{
        color: "transparent"
        width: 93
        height: 25
        anchors{
            left: parent.left
            top: parent.top
            leftMargin: 168*mainwindow.resize
            topMargin: 653*mainwindow.resize
        }

        Text {
            id: temptxt
            text: temp + " °C"

            color: "white"
            font.pixelSize: 20
            font.family: "Sans-serif"
            font.bold: false
            anchors{
                centerIn: parent
            }
            //visible: false
        }
    }

    BatteryLine{

    }

    Text {
        id: battery_percent
        text: battery_percent_val + "%"

        color: "white"
        font.pixelSize: 16
        font.family: "Sans-serif"
        font.bold: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 628*mainwindow.resize - 8*(mainwindow.resize - 1)
    }


    RightTline{
        id: tline
        layer.enabled: true
        layer.effect: Glow{
            anchors.fill: tline
            radius: 6
            samples: 28
            color: "#a6fffe"
            source: tline
        }

    }


    Bottomline{
        id: bottomline
    }

    Bottomline{
        transform: Scale {
            origin.x: width/2
            origin.y: height/2
            xScale: -1
        }
    }

    Image {
        id: warningimg
        source: warning == 1 ? "problem.png" : "warning.png"
        visible: warning == 0 ? false : true
        width: 45
        height: 45
        x: 320*mainwindow.resize
        y: 540*mainwindow.resize
        opacity: 0.8
    }

    Numbers{

    }


}
