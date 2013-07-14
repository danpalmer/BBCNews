import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem
import "components"

MainView {
    objectName: "mainView"
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

            ListView {
                id: categoriesList
                anchors.fill: parent
                model: categoriesFeed.model

                CategoriesFeed {
                    id: categoriesFeed
                }

                delegate: ListItem.Empty {
                    height: units.gu(20)
                    CategoryComponent {
                        title: model.title
                        categoryID: model.id
                    }
                }
            }
        }

        Page {
            id: articleView
            title: 'Article'
        }
    }
}