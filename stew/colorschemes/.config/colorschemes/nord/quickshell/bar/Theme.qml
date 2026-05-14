import Quickshell
import QtQuick

//nord0 = #2e3440
//nord1 = #3b4252;
//nord2 = #434c5e;
//nord3 = #4c566a;
pragma Singleton
Singleton{
    id:theme                
    readonly property color bg: '#2e3440'
    readonly property color fg: '#3b4252'
    readonly property color buttonsWorkspaces: "#4c566a"
    readonly property color textWhite: '#f5e0cd'
    readonly property color hoveredButtonWs: '#414e68'
    readonly property color newCyan: "#88C0D0"
}