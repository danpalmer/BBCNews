import QtQuick 2.0
import "../JSONListModel" as JSON

Item {
    property string category: "uk"
    property ListModel model: newsFeed.model
    JSON.JSONListModel {
        id: newsFeed
        source: "http://api.bbcnews.appengine.co.uk/stories/" + category
        query: "stories[*]"
    }
}