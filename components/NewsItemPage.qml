import QtQuick 2.0
import QtWebKit 3.0
import Ubuntu.Components 0.1
import Ubuntu.Components.ListItems 0.1 as ListItem

Page {

    property alias url: newsItemWebView.url

    WebView {
        id: newsItemWebView
        url: ""
        anchors.fill: parent
        scale: 1
    }
}
