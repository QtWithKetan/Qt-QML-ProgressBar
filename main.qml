import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column
    {
        spacing: 20
        anchors.centerIn: parent
        ProgressBar
        {
            id: myProgressBar
            width: 300
            value: 75
            from: 0 // Minimum Value
            to: 750 // Maximum Value

            onValueChanged:
            {
                console.log("ProgressBar Value : ", value)
            }
        }

        Row
        {
            spacing: 20
            Button
            {
                id: myButton_Inc
                text: "Increase"
                onClicked:
                {
                    if (myProgressBar.value < myProgressBar.to)
                    {
                        myProgressBar.value += 15
                    }
                }
            }

            Button
            {
                id: myButton_Dec
                text: "Decrease"
                onClicked:
                {
                    if (myProgressBar.value > myProgressBar.from)
                    {
                        myProgressBar.value -= 15
                    }
                }
            }
        }

        Text
        {
            id: myText
            text: "Progress: " + Math.round((myProgressBar.value * 100) / myProgressBar.to) + " %"
            font.pixelSize: 15
        }
    }

}
