import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1
import "models"

Empty {
    
    property string categoryId: ""
    property string title: ""

    height: newsItemView.height + categoryTitle.height

    width: parent.width
    //color: "transparent"

    Rectangle {
        id: categoryTitle
        width: parent.width
        color: "transparent"
        height: units.gu(4)

        Label {
            anchors.verticalCenter: parent.verticalCenter
            x: units.gu(1)
            color: UbuntuColors.coolGrey
            text: title
            fontSize: "large"
        }
    }

    ListView {
        id: newsItemView
        width: parent.width
        height: units.gu(19)
        anchors.top: categoryTitle.bottom
        model: newsFeed.model
        orientation: ListView.Horizontal
        snapMode: ListView.SnapOneItem

        NewsItemFeed {
            id: newsFeed
            category: categoryId
        }

        delegate: NewsItemComponent {
            text: model.description
            image: model.thumbnail
            link: model.link
        }
    }
}
