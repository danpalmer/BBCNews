import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    width: parent.width
    height: units.gu(20)

    property string title: ""
    property string categoryID: ""

    color: "transparent"

    Column {
        Row {
            Text {
                text: title
            }
        }
        Row {
            width: 2000
            
            GridView {
                id: newsItemView
                model: newsFeed.model
                width: units.gu(200)

                NewsItemFeed {
                    id: newsFeed
                    category: categoryID
                }

                delegate: Column {
                    UbuntuShape {
                        width: 144.0
                        height: 81.0
                        
                        CrossFadeImage {
                            width: parent.width
                            height: parent.height
                            source: model.thumbnail
                            fadeDuration: 1000
                        }
                    }
                    Text {
                        text: model.title
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
}
