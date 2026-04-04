import "../.."
import ".."
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets

RowLayout {
    id: sysTray

    required property int tyRowRecWidth
    readonly property int cnt: repeaterSystemTray.count
    spacing: Config.spacingTrayRow
    height: 30

    Repeater {
        id:repeaterSystemTray
        model: SystemTray.items.values

        delegate: Rectangle {
            id: recRoot

            width: Config.widthTrayItem
            height: 26
            color: Theme.buttonsWorkspaces
            radius: 15
            IconImage {
                width: 20
                height: 20
                source: modelData.icon

                anchors {
                    centerIn: parent
                }

            }

            MouseArea {
                anchors.fill: parent
                   onClicked: event =>{
                      switch(event.button){
                        case Qt.LeftButton:
                        if (modelData.hasMenu){
                            meniu.open()
                        }
                        case Qt.RightButton:
                            modelData.activate()
                      }
                }
                hoverEnabled: true
                onEntered: {
                    recRoot.color = Theme.hoveredButtonWs;
                }
                onExited: {
                    if(meniu.visible == false){
                    recRoot.color = Theme.buttonsWorkspaces;
                    }
                }

           QsMenuAnchor {  
              id:meniu
              menu: modelData.menu
               anchor {
                  item: recRoot
                   rect.y: 35
                   rect.x: 30
                   gravity: Edges.Bottom | Edges.Left
                   rect.height: modelData.height
                   edges: Edges.Top | Edges.Right
               }
               onClosed:{
                   recRoot.color = Theme.buttonsWorkspaces;
               }
           
           }
            QsMenuOpener{
                
            }
        }       
        }

    }

}
