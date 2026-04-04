import ".."
import QtQml.Models
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.I3
import "../.."
Rectangle {
    id: root
    required property int wsRecWidth
    anchors.fill: parent
    height: 30
    implicitWidth: 100
    color: Theme.fg
    radius: 10
    RowLayout {
        id: rar

        anchors{
            left:parent.left
            verticalCenter: parent.verticalCenter
        }
        spacing: Config.widthBetweenBigButtonLeft

        Rectangle {
            width: Config.widthBigButtonLeft
            height: Config.heightBigButtonLeft
            color: Theme.buttonsWorkspaces
            Layout.leftMargin:Config.marginBigButtonLeft
            Layout.alignment: Qs.AlignLeft
            radius: 15
            Text{
                anchors{
                    horizontalCenter: parent.horizontalCenter
                }
                text: ""
                font.pixelSize: 18
                color: Theme.newCyan
            }
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    Quickshell.execDetached(["kitty", "--hold", "sh", "-c", "bash /home/poor/MySetup/serverStart.sh"])
                    }
            }
        }

        RowLayout {
            spacing: Config.spacingWorkspaces
            Repeater {
                model: I3.workspaces

                delegate: Rectangle {
                    id: delRectangle
                    property string wsName: modelData.name
                    color: Theme.buttonsWorkspaces
                    width: Config.widthWorkspaceItem
                    height: 20
                    radius: 15

                    Text {
                        id: internalText
                        font.family: "JetBrainsMono Nerd Font"
                        anchors.centerIn: parent
                        text: wsName
                        color: modelData.focused ? Theme.newCyan : Theme.textWhite
                        font.pixelSize: 13
                    }
                    MouseArea{
                        hoverEnabled:true
                        anchors.fill:parent
                        onEntered: delRectangle.color =Theme.hoveredButtonWs
                        onExited: delRectangle.color = Theme.buttonsWorkspaces
                        onClicked: I3.dispatch('workspace '+modelData.name)
                    }

                }

            }

        }

    }

}
