import ".."
import "../.."
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets

Rectangle { //  Right rectangle
    required property int swidth
    required property int tyRecWidth
    readonly property int cnt: trayRowing.cnt

    anchors.fill: parent
    width: swidth
    height: 30
    color: Theme.fg
    radius: 10

    RowLayout {
        spacing: Config.widthBetweenBigButtonRight
        layoutDirection: Qt.RightToLeft

        anchors {
            right: parent.right
            rightMargin: Config.marginBigButtonRight
            verticalCenter: parent.verticalCenter
        }

        Rectangle { // LARGE RECTANGLE ON THE SIDE
            width: Config.widthBigButtonRight
            height: Config.heightBigButtonRight
            color: Theme.buttonsWorkspaces
            Layout.alignment: Qt.AlignRight || Qt.AlignHCenter
            radius: 13
            MouseArea{
                anchors.fill: parent
                onClicked: Quickshell.execDetached(["prismlauncher", "-l", "Enigmatica 2 Expert Unofficial - E2Eu" ])
            }
            Text{
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                font.pixelSize: 26
                text: "\udb80\ude38"
                color: Theme.newCyan
            }
        }

        TrayRow { //    System Tray
            id: trayRowing

            tyRowRecWidth: tyRecWidth
        }

    }

}
