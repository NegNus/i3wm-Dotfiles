import "Moduless"
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.I3
import Quickshell.Services.SystemTray
import ".."
Scope {
    id:root
    property int sidesMargin: 20
    property int bgSidesMargin: 10
    property int spacesBetweenWorkspaces: 5
    property int wsSides: 60
    property int farButtonsWidth: 24
    PanelWindow {
        id: bar
        color: "transparent"
        visible: true
        implicitHeight: Config.heightOfBar

        anchors {
            left: true
            right: true
            top: true
        }
        Rectangle {     // Background 
            color: Theme.bg
            radius: 15
            implicitHeight: bar.implicitHeight
            anchors {
                fill: parent
                leftMargin: bgSidesMargin
                rightMargin: bgSidesMargin
            }

            Item {// Clock
                implicitWidth: upClock.implicitWidth
                implicitHeight: bar.implicitHeight

                anchors {
                    centerIn: parent
                }

                Rectangle { 
                    id: upClock
                    property var l:5 
                    implicitHeight: clockwid.implicitHeight
                    implicitWidth: clockwid.implicitWidth
                    color: "transparent"

                    anchors {
                        centerIn:parent
                    }

                    ClockWidget { 
                        id: clockwid
                    }
                }

            }// Clock END


            RowLayout {     // Left and Right part of the bar
                anchors {
                    fill: parent
                }

                Rectangle {     // WORKSPACES       Left part
                    height: bar.implicitHeight
                    implicitWidth: I3.workspaces.values.length*(Config.widthWorkspaceItem+Config.spacingWorkspaces)+Config.widthBigButtonLeft+Config.marginBigButtonLeft+Config.widthBetweenBigButtonLeft
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: sidesMargin
                    color: "transparent"
                    Workspaces {
                        id: workid
                    }

                }

                Rectangle {     // System Tray      Right part
                    id: rightRoot
                    implicitHeight: bar.implicitHeight
                    implicitWidth: trayIn.cnt*(Config.widthTrayItem+Config.spacingTrayRow)+Config.widthBetweenBigButtonRight+Config.widthBigButtonRight+Config.marginBigButtonRight
                    color: Theme.fg
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: sidesMargin
                    radius: 10
                    Tray{
                        id:trayIn
                        swidth: rightRoot.implicitWidth
                        tyRecWidth: farButtonsWidth
                    }
                }

            }

        }

    }
    IpcHandler{
        target: "bar"
        function visibilityOnOff():void{
            if(bar.visible){
                bar.visible = false
            }
            else{
                bar.visible = true
            }
        }
    }
    }
