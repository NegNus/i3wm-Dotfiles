import QtQuick
import Quickshell
pragma Singleton

Singleton {
    id: root
    readonly property string day: {
        Qt.formatDateTime(clock.date, "ddd d");
    }
    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm");
    }

    SystemClock {
        id: clock

        precision: SystemClock.Minutes
    }

}
