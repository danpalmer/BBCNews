import QtQuick 2.0
import Ubuntu.Components 0.1
import "components"

MainView {
    id: mainView
    objectName: "mainView"
    applicationName: "BBCNews"
    automaticOrientation: true
    width: 360
    height: 640

    PageStack {
        id: pageStack
        anchors.fill: parent
        Component.onCompleted: pageStack.push(categoriesPage)

        CategoriesPage {
            id: categoriesPage
        }

        NewsItemPage {
            id: newsItem
            visible: false
        }
    }
}