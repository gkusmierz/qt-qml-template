import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: win
    visible: true
    flags: Qt.Window
    //visibility: Window.Maximized

    Button {
        id: fullscreenButton
        anchors.centerIn: parent
        checkable: true
        Binding on checked { value: win.visibility === Window.FullScreen }
        text: "⛶"
        ToolTip.visible: hovered
        ToolTip.delay: Qt.styleHints.mousePressAndHoldInterval
        ToolTip.text: win.visibility === Window.FullScreen ? qsTr("restore") : qsTr("fill screen")
    }
}
