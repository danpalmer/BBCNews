import QtQuick 2.0
import "../../JSONListModel" as JSON

Item {
    property ListModel model: categoriesFeed.model
    
    JSON.JSONListModel {
        id: categoriesFeed
        source: "http://api.bbcnews.appengine.co.uk/topics"
        query: "topics[*]"
    }
}