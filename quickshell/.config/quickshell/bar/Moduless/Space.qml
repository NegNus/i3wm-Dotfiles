import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.I3
Rectangle{
    required property var wNumber
    required property I3Workspace workID
    color: "black"
    width: 26; height: 20
    radius: 15
    Text{
        id:internalText
        font.family: "JetBrainsMono Nerd Font"
        anchors.centerIn: parent
        text: "1"
        color: workID.focused ? "red" : "blue"
    }
    
}