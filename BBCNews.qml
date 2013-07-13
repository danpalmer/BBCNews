import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1
import "components"

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"
    
    // Note! applicationName needs to match the .desktop filename
    applicationName: "BBCNews"
    
    automaticOrientation: true
    
    width: units.gu(75)
    height: units.gu(100)
    
    PageStack {
        id: pageStack
        anchors.fill: parent
        Component.onCompleted: pageStack.push(categories)

        Page {
            id: categories
            title: i18n.tr("BBC News")
        }
    }
}
