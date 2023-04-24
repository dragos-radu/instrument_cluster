import QtQuick 2.0

Rectangle{
    anchors.fill: parent
    color: "transparent"


    Text {
        id: zero
        text: qsTr("0")

        color: "white"
        font.pixelSize: 28
        font.family: "Sans-serif"
        font.bold: true

        x:1143*mainwindow.resize
        y:490*mainwindow.resize


    }

    Text {
        id: zero_sp
        text: qsTr("0")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:250*mainwindow.resize
        y:625*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: kmh
        text: qsTr("km/h")

        color: "white"
        font.pixelSize: 12
        font.family: "Sans-serif"
        font.bold: true

        x:220*mainwindow.resize
        y:605*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: do_sp
        text: qsTr("20")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:165*mainwindow.resize
        y:625*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: pa_sp
        text: qsTr("40")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:73*mainwindow.resize
        y:520*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: sa_sp
        text: qsTr("60")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:50*mainwindow.resize
        y:390*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: osuta
        text: qsTr("100")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:73*mainwindow.resize
        y:260*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: unup
        text: qsTr("140")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:165*mainwindow.resize
        y:145*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: unuo
        text: qsTr("180")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:325*mainwindow.resize
        y:120*mainwindow.resize

        opacity: 0.8
    }

    Image {
        id: batterycharge
        source: "car-battery.png"
        width: 23
        height: 23
        x: 1025*mainwindow.resize
        y: 622*mainwindow.resize
    }

    Image {
        id: lowbeamimg
        source: "beam.png"
        width: 30
        height: 30
        x:300*mainwindow.resize
        y:460*mainwindow.resize
    }
    Text {
        id: pwr
        text: qsTr("power %")

        color: "white"
        font.pixelSize: 12
        font.family: "Sans-serif"
        font.bold: true

        x:920*mainwindow.resize
        y:147*mainwindow.resize
        rotation: 10

        opacity: 0.8
    }

    Text {
        id: dc_pwr
        text: qsTr("25")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:1205*mainwindow.resize
        y:390*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: c_pwr
        text: qsTr("50")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:1183*mainwindow.resize
        y:260*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: sc_pwr
        text: qsTr("75")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:1085*mainwindow.resize
        y:145*mainwindow.resize

        opacity: 0.8
    }

    Text {
        id: suta_pwr
        text: qsTr("100")

        color: "white"
        font.pixelSize: 20
        font.family: "Sans-serif"
        font.bold: true

        x:912*mainwindow.resize
        y:120*mainwindow.resize

        opacity: 0.8
    }
}
