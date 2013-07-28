import QtQuick 2.0
import Ubuntu.Components 0.1

Rectangle {
    
    property string text: ""
    property string image: ""
    property string link: ""

    width: picture.width + units.gu(2)
    height: picture.height + text.height

    color: "transparent"

    UbuntuShape {
        id: picture
        x: units.gu(1)
        width: units.gu(18)
        height: units.gu(10)
        image: Image {
            source: image
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text
        x: units.gu(1)
        y: picture.height + units.gu(1)
        width: picture.width
        height: units.gu(8)
        maximumLineCount: 3
        wrapMode: TextEdit.WordWrap
        textFormat: TextEdit.PlainText
        color: UbuntuColors.coolGrey
        text: model.title
    }


    MouseArea {
        anchors.fill: parent
        onClicked: {
            newsItem.visible = true
            newsItem.url = link.replace("www", "m")
            pageStack.push(newsItem)
            pageStack.__showHeader = false
        }
    }
}
