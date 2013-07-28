import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1
import "models"

Page {

    id: categories
    title: i18n.tr("BBC News")

    CategoriesFeed {
        id: categoriesFeed
    }

    ListView {
        id: categoriesList
        anchors.fill: parent
        model: categoriesFeed.model
        orientation: ListView.Vertical

        delegate: CategoryComponent {
            id: categoryView
            title: model.title
            categoryId: model.id
        }
    }
}