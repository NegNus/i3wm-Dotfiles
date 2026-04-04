import Quickshell
pragma Singleton

Singleton{
    id:config
    ///////////
    //  BAR  //
    ///////////
    readonly property int topMargin:8
    readonly property int heightOfBar: 30 // Height of the bar
    //////////////////////////////////
    //  Right Bar AKA SystemTray    //
    //////////////////////////////////
    readonly property int spacingTrayRow: 5             // spacing between items
    readonly property int widthTrayItem: 30             // width of item
    readonly property int widthBigButtonRight: 36       // big button width
    readonly property int heightBigButtonRight: 26      // big button height
    readonly property int widthBetweenBigButtonRight: 20// distance between big button and items
    readonly property int marginBigButtonRight: 10      // margin between big button and items
    readonly property string commandRightButton: ["prismlauncher", "-l", "Enigmatica 2 Expert Unofficial - E2Eu" ]    // command for right button
    //////////////////////////////////
    //   Left Bar AKA Workspaces    //
    //////////////////////////////////
    readonly property int spacingWorkspaces: 5          // spacing between workspaces
    readonly property int widthWorkspaceItem: 30        // width of item
    readonly property int heightBigButtonLeft: 26       // height of big button
    readonly property int widthBigButtonLeft: 36        // width of big button
    readonly property int widthBetweenBigButtonLeft: 18 // width between big button and items
    readonly property int marginBigButtonLeft: 10       // margin between big button and items
    //////////////////////////
    //         Clock        //
    //////////////////////////
    readonly property int clockWidth: 140
    readonly property int clockHeight: 24
}