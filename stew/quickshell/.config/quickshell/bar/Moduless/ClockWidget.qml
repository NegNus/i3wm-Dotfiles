import ".."
import "../.."
import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle {
    id: recc
    color: Theme.fg
    implicitHeight:Config.clockHeight
    implicitWidth:Config.clockWidth
    radius: 8
    ColumnLayout {
        anchors{
            fill:parent
            centerIn: parent
        }
        spacing: -3

        Text {
            font.family:"JetBrainsMono Nerd Font"
            font.pointSize:12
            Layout.alignment: Qt.AlignHCenter
            text: Time.time + " "+ Time.day
            color:Theme.textWhite
        }


    }
}

