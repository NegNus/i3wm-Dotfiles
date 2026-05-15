import Quickshell
import QtQuick


pragma Singleton
Singleton{
    id:theme                
    readonly property color bg:  '#302e2e' 
    readonly property color fg: '#3c3836' 
    readonly property color buttonsWorkspaces: '#504945'
    readonly property color textWhite: '#EBDBB2'
    readonly property color hoveredButtonWs: '#458588'
    readonly property color newCyan: '#8EC07C' 
}
