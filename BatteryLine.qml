import QtQuick 2.0
import QtQuick.Shapes 1.12


Rectangle{
    anchors.left: parent.left
    anchors.leftMargin: 629*mainwindow.resize
    anchors.top: parent.top
    anchors.topMargin: 575*mainwindow.resize + (mainwindow.resize-1)*44
    id:battery
    radius: 4

    property var battery_percent: mainwindow.battery_percent_val/100

    rotation: 270

    width: 20
    height: 123
    border.width: 1
    border.color: "white"
    gradient: Gradient {
            GradientStop { position: 0.0; color: battery_percent >= 0.25 ? (battery_percent >= 0.5 ? "blue" : "yellow" )  : "red" }
            GradientStop { position: battery_percent; color: battery_percent >= 0.25 ? (battery_percent >= 0.5 ? "blue" : "yellow" )  : "red" }
            GradientStop { position: battery_percent +0.0001; color: "transparent" }
        }


    Rectangle{
        id: mic
        width:4
        height: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.bottom
        color: "white"
    }
}
