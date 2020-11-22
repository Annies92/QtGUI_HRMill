import QtQuick 2.0

import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.4

Rectangle {
    id: window
    x: 0
    y: 0
    visible: true
    //color: ""
    width: 512; height: 300
    color: "#e8e6e2"
    border.color: "#00000000"
    z: 0
    rotation: 0
    transformOrigin: Item.Center
    scale: 1
    //////////////////////////

    //Block { x: 702; y: 468; spacing: 10; anchors.verticalCenterOffset: 2; anchors.verticalCenter: parent.verticalCenter}
    //////////////////////////

    //Bigblock {}



    ColumnLayout {
        x: 400
        y: 465
        width: 94
        height: 94
        clip: false

        anchors.verticalCenterOffset: 20
        anchors.horizontalCenterOffset: -166
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        //anchors.horizontalCenterOffset: -20
        antialiasing: false
        spacing: 10
        Image {
            id:rec7
            y: -1
            width: 92; height: 47
            Layout.preferredWidth: -1
            Layout.maximumWidth: 65533
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: true
            z: 0
            fillMode: Image.Stretch
            opacity: 1
            sourceSize.height: 44
            sourceSize.width: 110
            source: "rect5.png"
            //anchors.centerIn: parent
            RowLayout {
                y: 5
                width: 121
                height: 45
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: 5
                Column {
                    id: column6
                    x: 5
                    width: 25
                    height: 45
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    clip: false
                    anchors.fill: parent
                    //spacing: 1
                    //verticalCenter: Qt.AlignVCenter
                    Image {
                        id: logo22
                        x: 5
                        y: 13
                        source: "c_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: -7
                        anchors.horizontalCenterOffset: -30
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }


                    Image {
                        width: 16; height: 16
                        anchors.horizontalCenterOffset: -30
                        anchors.verticalCenterOffset: 13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo23
                        x: 5
                        y: 10
                        source: "ac_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360 ; to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    id: column7
                    x: 35
                    width: 25
                    clip: false
                    anchors.fill: parent
                    //spacing: 1
                    //verticalCenter: Qt.AlignVCenter
                    Image {
                        id: logo24
                        x: 30
                        y: 13
                        source: "c_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: -7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        width: 16; height: 16
                        anchors.horizontalCenterOffset: -1
                        anchors.verticalCenterOffset: 13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo25
                        x: 30
                        y: 10
                        source: "ac_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360 ; to: 0
                            duration: 1000
                        }
                    }
                }
                Column {
                    id: column8
                    x: 65
                    width: 25
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    clip: false
                    anchors.fill: parent
                    //spacing: 1
                    //verticalCenter: Qt.AlignVCenter
                    Image {
                        id: logo26
                        x: 60
                        y: 13
                        source: "c_circle.png"
                        width: 24
                        height: 24
                        anchors.horizontalCenterOffset: 29
                        anchors.verticalCenterOffset: -7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        width: 16; height: 16
                        anchors.verticalCenterOffset: 13
                        anchors.horizontalCenterOffset: 29
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo27
                        x: 60
                        y: 10
                        source: "ac_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360 ; to: 0
                            duration: 1000
                        }
                    }
                }
            }
        }
        Image {
            id:rec8
            y: 49
            x:0
            width: 92; height: 48
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            sourceSize.height: 44
            sourceSize.width: 110
            opacity: 1
            fillMode: Image.Stretch
            source: "rect6.png"
            RowLayout {
                y: 5
                width: 95
                height: 45
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: 5
                Column {
                    //id: column
                    x: 5
                    width: 25
                    clip: false
                    anchors.fill: parent
                    //spacing: 1

                    Image {
                        width: 16; height: 16
                        rotation: 0
                        anchors.horizontalCenterOffset: -30
                        anchors.verticalCenterOffset: -13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo28
                        x: 5
                        y: 10
                        source: "c_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0 ; to: 360
                            duration: 1000
                        }
                    }
                    Image {
                        id: logo29
                        x: 5
                        y: 13
                        source: "ac_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: 7
                        anchors.horizontalCenterOffset: -30
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }
                Column {
                    // id: column1
                    x: 35
                    width: 25
                    clip: false
                    anchors.fill: parent


                    Image {
                        width: 16; height: 16
                        anchors.horizontalCenterOffset: -1
                        anchors.verticalCenterOffset: -13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo30
                        x: 30
                        y: 10
                        source: "c_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0 ; to: 360
                            duration: 1000
                        }
                    }
                    Image {
                        id: logo31
                        x: 30
                        y: 13
                        source: "ac_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: 7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -1
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }


                }
                Column {
                    // id: column2
                    x: 65
                    y: 0
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent


                    Image {
                        width: 16; height: 16
                        anchors.verticalCenterOffset: -13
                        anchors.horizontalCenterOffset: 29
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo32
                        x: 60
                        y: 10
                        source: "c_circle.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0 ; to: 360
                            duration: 1000
                        }
                    }
                    Image {
                        id: logo33
                        x: 60
                        y: 13
                        source: "ac_circle.png"
                        width: 24
                        height: 24
                        anchors.horizontalCenterOffset: 29
                        anchors.verticalCenterOffset: 7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }
            }
        }
    }

    //////////////////////////
    Rectangle {
        id: belt ; x: 61; color: "grey"
        anchors.verticalCenterOffset: 20
        anchors.horizontalCenterOffset: 0
        width: 504; height: 10
        anchors.centerIn: parent
    }
    Image {
        id: image3
        x: 280
        y: 448
        width: 35
        height: 27
        source: "shear1.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: -77
        anchors.verticalCenterOffset: 2
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Image {
        id: image4
        x: 159
        y: 175
        width: 35
        height: 26
        source: "shear2.png"
        anchors.verticalCenter: image42.verticalCenter
        anchors.verticalCenterOffset: 17
    }

    Loader { id : anim }

    Button {
        id: start
        x: 188
        y: 261
        width: 40
        height: 25
        text: ""
        enabled: true
        scale: 1
        checked: true
        checkable: true
        isDefault: false
        iconSource: "start.png"
        onClicked: anim.source = "neu.qml"
    }
    Button {
        id:stop
        x: 256
        y: 261
        width: 40
        height: 25
        smooth: true
        scale: 1
        checked: true
        activeFocusOnPress: false
        isDefault: false
        checkable: true
        iconSource: "stop.png"
        onClicked: anim.sourceComponent = undefined;
    }
    //Item {
   // function qmlslot() {
       //MouseArea  {
        //   anchors.fill: parent
        //   onClicked:
        /*Rectangle {
        id: material
        x: 165
        y: 187
        width: 65
        height: 10
        color: "#ff5930"
        SequentialAnimation on x {
            //loops: Animation.Infinite
            PropertyAnimation
            {
             from: 165 ; to: 270
             duration: 1200
            }
            ScriptAction
            {
             script: material.destroy()
            }
            //property var component : Qt.createComponent("new.qml");
            //property var rect : component.createObject(window, {"x": 280, "y":187});
            //var component = Qt.createQmlObject("import QtQuick 2.5; Rectangle { width:50; height:10; x:280; y:187; color: \"gray\"}", root, "dynamicItem");
        }
    }

    Rectangle{
        id: material1
        x:165
        y:187
        width: 35
        height: 10
        color: "#ff5930"
        //visible: false
        SequentialAnimation on x{
            ParallelAnimation {
                PropertyAnimation{
                    from: 165; to: 360
                    duration: 2400
                }
            }

            ParallelAnimation  {
            NumberAnimation {
                target: material1
                property: "width"
                to:60
                duration: 1100
                easing.type: Easing.Linear
            }
            PropertyAnimation
            {
                from: 361 ; to: 460
                duration: 1100
            }
        }
        ParallelAnimation {
            PropertyAnimation{
                from: 461; to: 610
                duration: 1800
            }
        }
        ParallelAnimation{

            NumberAnimation {
                target: material1
                property: "width"
                to:80
                duration: 1000
                easing.type: Easing.Linear
            }
            PropertyAnimation{
                from: 610; to: 710
                duration: 1000
            }
        }
        ParallelAnimation{
            PropertyAnimation{
                from: 711; to: 1000
                duration: 3000
            }
        }
    }
}
    Rectangle {
        id: material2
        x:206
        y:187
        width: 35
        height: 10
        color: "#ff5930"
        SequentialAnimation on x {
            ParallelAnimation
            {
            PropertyAnimation
             {
                from: 206 ; to: 360
                duration: 1700
             }
            }
            ParallelAnimation  {
            NumberAnimation
            {
                target: material2
                property: "width"
                to:60
                duration: 1000
                easing.type: Easing.Linear
            }
            PropertyAnimation
            {
                from: 360 ; to: 460
                duration: 1000
            }
        }
            ParallelAnimation {
                PropertyAnimation{
                    from: 461; to: 610
                    duration: 1600
                }
            }
            ParallelAnimation{
                NumberAnimation {
                    target: material2
                    property: "width"
                    to:80
                    duration: 900
                    easing.type: Easing.Linear
                }
                PropertyAnimation{
                    from: 610; to: 710
                    duration: 900
                }
            }
            ParallelAnimation{
                PropertyAnimation{
                    from: 711; to: 1000
                    duration: 3000
                }
            }
    }
    }
*/

    //}
    //}

    ColumnLayout {
        x: 394
        y: 474
        width: 170
        height: 100
        anchors.verticalCenter: parent.verticalCenter
        clip: false
        Image {
            id: rec9
            y: -3
            width: 173
            height: 45
            source: "rect8.png"
            Layout.preferredWidth: -1
            z: 0
            RowLayout {
                y: 5
                width: 121
                height: 45
                anchors.verticalCenter: parent.verticalCenter
                Column {
                    id: column9
                    x: 5
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo34
                        x: 5
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -67
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo35
                        x: 5
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -67
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                }

                Column {
                    id: column10
                    x: 35
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo36
                        x: 30
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -39
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo37
                        x: 30
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -39
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    id: column11
                    x: 65
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo38
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -11
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo39
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -11
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                Column {
                    id: column12
                    x: 65
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo40
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 70
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo41
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 70
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Column {
                    id: column13
                    x: 65
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo42
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 43
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo43
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 17
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Column {
                    id: column14
                    x: 65
                    width: 25
                    height: 44
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo44
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 17
                        anchors.verticalCenterOffset: -6
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo45
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 43
                        anchors.verticalCenterOffset: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                spacing: 5
                anchors.horizontalCenter: parent.horizontalCenter
            }
            sourceSize.width: 110
            Layout.fillWidth: true
            fillMode: Image.Stretch
            opacity: 1
            Layout.maximumWidth: 65535
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillHeight: true
            sourceSize.height: 45
        }

        Image {
            id: rec10
            x: 0
            y: 53
            width: 173
            height: 45
            source: "rect7.png"
            RowLayout {
                y: 5
                width: 95
                height: 45
                anchors.verticalCenter: parent.verticalCenter
                Column {
                    x: 5
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo46
                        x: 5
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -67
                        anchors.verticalCenterOffset: -15
                        rotation: 0
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo47
                        x: 5
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -67
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    x: 35
                    width: 25
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo48
                        x: 30
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -39
                        anchors.verticalCenterOffset: -15
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo49
                        x: 30
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -39
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    x: 65
                    y: 0
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo50
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -11
                        anchors.verticalCenterOffset: -15
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo51
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: -11
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    x: 65
                    y: 0
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo52
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 17
                        anchors.verticalCenterOffset: -15
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo53
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 17
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    x: 65
                    y: 0
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo54
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 43
                        anchors.verticalCenterOffset: -15
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo55
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 43
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }

                Column {
                    x: 65
                    y: 0
                    width: 25
                    height: 44
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    clip: false
                    anchors.fill: parent
                    Image {
                        id: logo56
                        x: 60
                        y: 10
                        width: 16
                        height: 16
                        source: "c_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 70
                        anchors.verticalCenterOffset: -15
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 0
                            to: 360
                            duration: 1000
                        }
                    }

                    Image {
                        id: logo57
                        x: 60
                        y: 13
                        width: 24
                        height: 24
                        source: "ac_circle.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 70
                        anchors.verticalCenterOffset: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RotationAnimation on rotation {
                            loops: Animation.Infinite
                            from: 360
                            to: 0
                            duration: 1000
                        }
                    }
                }
                spacing: 5
                anchors.horizontalCenter: parent.horizontalCenter
            }
            sourceSize.width: 110
            Layout.fillWidth: true
            opacity: 1
            fillMode: Image.Stretch
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.fillHeight: true
            sourceSize.height: 45
        }
        anchors.horizontalCenterOffset: 47
        antialiasing: false
        spacing: 10
        anchors.verticalCenterOffset: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }












    Text {
        id: text5
        x: 154
        y: 230
        width: 42
        height: 14
        text: qsTr("Shear 2")
        font.pixelSize: 12
    }

    Text {
        id: text7
        x: 51
        y: 230
        width: 71
        height: 14
        text: qsTr(" 500er block")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle7
        x: 0
        y: 6
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 199
        anchors.verticalCenterOffset: 30
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }


    Rectangle {
        id: rectangle8
        x: 9
        y: 6
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 227
        anchors.verticalCenterOffset: 30
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }


    Rectangle {
        id: rectangle9
        x: 3
        y: 14
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 241
        anchors.verticalCenterOffset: 30
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }


    Rectangle {
        id: rectangle10
        x: 9
        y: 3
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 213
        anchors.verticalCenterOffset: 30
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }


    Rectangle {
        id: rectangle11
        x: -7
        y: -5
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: -227
        anchors.verticalCenterOffset: 29
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }

    Text {
        id: text8
        x: 268
        y: 230
        width: 62
        height: 14
        text: qsTr("FSFM Block")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle12
        x: -6
        y: 2
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: -243
        anchors.verticalCenterOffset: 29
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }


    Rectangle {
        id: rectangle13
        x: 0
        y: -2
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: 185
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }


    Rectangle {
        id: rectangle14
        x: -1
        y: 1
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        enabled: true
        smooth: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: 171
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }


    Rectangle {
        id: rectangle15
        x: -5
        y: -6
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: 157
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }


    Rectangle {
        id: rectangle16
        x: -1
        y: 3
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        enabled: true
        smooth: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: 143
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }


    Rectangle {
        id: rectangle17
        x: -1
        y: -6
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: -106
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }

    Text {
        id: text9
        x: 402
        y: 230
        width: 73
        height: 14
        text: qsTr(" Cooling Bed")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle18
        x: -10
        y: -5
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 4
        enabled: true
        smooth: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
        anchors.horizontalCenterOffset: -48
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 30
    }

}


