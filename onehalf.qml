import QtQuick 2.0

import QtQuick.Window 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.4


Rectangle {
    id: window
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

    Text {
        id: text6
        x: 385
        y: 225
        width: 71
        height: 14
        text: qsTr(" 420er block")
        font.pixelSize: 12
    }

    Rectangle {
        id: furnace
        x: 91
        y: 475
        width: 70
        height: 50
        color: "#aaaa7f"
        anchors.verticalCenterOffset: 17
        anchors.verticalCenter: parent.verticalCenter
        transformOrigin: Item.Left
    }


    //////////////////////////

    //Block { x: 702; y: 468; spacing: 10; anchors.verticalCenterOffset: 2; anchors.verticalCenter: parent.verticalCenter}
    //////////////////////////

    /*ColumnLayout {
        id: columnLayout
        x: 310
        y: 470
        width: 35
        height: 96
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: 227
        spacing: 10
        anchors.centerIn: parent
        Image {
            id:rec3
            y: 0
            //y: 2
            width: 35; height: 25
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillHeight: true
            Layout.fillWidth: true
            opacity: 1
            sourceSize.height: 80
            sourceSize.width: 50
            source: "rect1.png"
            //anchors.centerIn: parent
            fillMode: Image.Stretch
            Column {
                id: column4
                y: -3
                width: 35
                height: 45
                enabled: true
                anchors.topMargin: 0
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                clip: false
                //spacing: 1
                //verticalCenter: Qt.AlignVCenter
                Image {
                    id: logo4
                    y: 13
                    source: "c_circle.png"
                    width: 24
                    height: 24
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
                    anchors.verticalCenter: parent.verticalCenter
                    id:logo5
                    y: 22
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
        Image {
            id:rec4
            y: 0
            width: 35; height: 25
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            sourceSize.height: 80
            sourceSize.width: 50
            opacity: 1
            fillMode: Image.Stretch
            source: "rect2.png"
            Column {
                width: 35
                height: 45
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                clip: false
                //spacing: 1
                //verticalCenter: Qt.AlignVCenter
                Image {
                    width: 16; height: 16
                    id:logo6
                    y: 0
                    source: "c_circle.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0 ; to: 360
                        duration: 1000            }
                }
                Image {
                    id: logo7
                    y: 13
                    source: "ac_circle.png"
                    width: 24
                    height: 24
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
    }*/


    ColumnLayout {
        id: columnLayout1
        x: 700
        y: 470
        width: 35
        height: 96
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: -24
        spacing: 10
        anchors.centerIn: parent
        Image {
            id:rec1
            //y: 2
            width: 35; height: 24
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            opacity: 1
            sourceSize.height: 80
            sourceSize.width: 50
            source: "rect1.png"
            //anchors.centerIn: parent
            fillMode: Image.Stretch
            Column {
                id: column5
                x: 0
                width: 35
                height: 44
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                clip: false
                //spacing: 1
                //verticalCenter: Qt.AlignVCenter
                Image {
                    id: logo
                    y: 13
                    source: "c_circle.png"
                    width: 24
                    height: 24
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
                    anchors.verticalCenter: parent.verticalCenter
                    id:logo1
                    y: 22
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
        Image {
            id:rec2
            y: 0
            width: 35; height: 31
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            sourceSize.height: 80
            sourceSize.width: 50
            opacity: 1
            fillMode: Image.Stretch
            source: "rect2.png"
            Column {
                x: 0
                y: 0
                width: 35
                height: 40
                anchors.verticalCenterOffset: -1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                clip: false
                //spacing: 1
                //verticalCenter: Qt.AlignVCenter
                Image {
                    width: 16; height: 16
                    id:logo2
                    x: 10
                    y: 0
                    source: "c_circle.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        from: 0 ; to: 360
                        duration: 1000            }
                }
                Image {
                    id: logo3
                    y: 13
                    source: "ac_circle.png"
                    width: 24
                    height: 24
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
    //Bigblock {}

    ColumnLayout {
        x: 400
        y: 465
        width: 96
        height: 94
        clip: false

        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: 168
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        //anchors.horizontalCenterOffset: -20
        antialiasing: false
        spacing: 10
        Image {
            id:rec5
            y: -1
            width: 92; height: 44
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
                    id: column
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
                        id: logo8
                        x: 5
                        y: 13
                        source: "c_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: -7
                        anchors.horizontalCenterOffset: -29
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
                        anchors.horizontalCenterOffset: -29
                        anchors.verticalCenterOffset: 13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo9
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
                    id: column1
                    x: 35
                    width: 25
                    clip: false
                    anchors.fill: parent
                    //spacing: 1
                    //verticalCenter: Qt.AlignVCenter
                    Image {
                        id: logo10
                        x: 30
                        y: 13
                        source: "c_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: -7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 0
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
                        anchors.horizontalCenterOffset: 0
                        anchors.verticalCenterOffset: 13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo11
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
                    id: column2
                    x: 65
                    width: 25
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    clip: false
                    anchors.fill: parent
                    //spacing: 1
                    //verticalCenter: Qt.AlignVCenter
                    Image {
                        id: logo12
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
                        id:logo13
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
            id:rec6
            y: 51
            x:0
            width: 92; height: 44
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
                        anchors.horizontalCenterOffset: -29
                        anchors.verticalCenterOffset: -13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo16
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
                        id: logo17
                        x: 5
                        y: 13
                        source: "ac_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: 7
                        anchors.horizontalCenterOffset: -29
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
                        anchors.horizontalCenterOffset: 0
                        anchors.verticalCenterOffset: -13
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo18
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
                        id: logo19
                        x: 30
                        y: 13
                        source: "ac_circle.png"
                        width: 24
                        height: 24
                        anchors.verticalCenterOffset: 7
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenterOffset: 0
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
                    y: -1
                    width: 25
                    height: 45
                    clip: false
                    anchors.fill: parent


                    Image {
                        width: 16; height: 16
                        anchors.verticalCenterOffset: -13
                        anchors.horizontalCenterOffset: 29
                        anchors.verticalCenter: parent.verticalCenter
                        id:logo20
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
                        id: logo21
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
        id: belt ; x: 50; color: "grey"
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: 82
        width: 340; height: 10
        anchors.centerIn: parent
    }

    Rectangle {
        id: rectangle2
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.verticalCenterOffset: 27
        anchors.horizontalCenterOffset: -57
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.width: 0
        smooth: true
        enabled: true
        transformOrigin: Item.Center
    }

    Rectangle {
        id: rectangle3
        x: 270
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.verticalCenterOffset: 27
        anchors.horizontalCenterOffset: 72
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.width: 0
    }

    Image {
        id: image
        x: 313
        y: 522
        width: 35
        height: 26
        anchors.verticalCenterOffset: 20
        anchors.horizontalCenterOffset: -44
        anchors.horizontalCenter: belt.horizontalCenter
        anchors.verticalCenter: image2.verticalCenter
        source: "shear2.png"
    }

    Image {
        id: image1
        x: 279
        y: 450
        width: 35
        height: 27
        anchors.verticalCenterOffset: -1
        anchors.horizontalCenterOffset: 38
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: "shear1.png"
    }

    Image {
        id: image2
        x: 7
        width: 81
        height: 52
        anchors.top: parent.top
        anchors.topMargin: 139
        anchors.right: furnace.left
        anchors.rightMargin: 3
        source: "steel_blocks.png"
    }







    Text {
        id: text1
        x: 16
        y: 225
        text: qsTr("Steel Blocks")
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 105
        y: 225
        text: qsTr("Furnace")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle4
        x: -1
        y: 1
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.verticalCenter: parent.verticalCenter
        smooth: true
        anchors.horizontalCenterOffset: 5
        anchors.horizontalCenter: parent.horizontalCenter
        enabled: true
        border.width: 0
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 27
    }

    Rectangle {
        id: rectangle5
        x: 0
        y: 4
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.verticalCenter: parent.verticalCenter
        smooth: true
        anchors.horizontalCenterOffset: 235
        anchors.horizontalCenter: parent.horizontalCenter
        enabled: true
        border.width: 0
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 27
    }
    Rectangle {
        id: rectangle6
        x: 4
        y: 0
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.verticalCenter: parent.verticalCenter
        smooth: true
        anchors.horizontalCenterOffset: -75
        anchors.horizontalCenter: parent.horizontalCenter
        enabled: true
        border.width: 0
        transformOrigin: Item.Center
        anchors.verticalCenterOffset: 27
    }

    Loader { id : anim }

    Button {
        id: start
        x: 173
        y: 256
        width: 40
        height: 25
        text: ""
        enabled: true
        scale: 1
        checked: true
        checkable: true
        isDefault: false
        iconSource: "start.png"  
        onClicked: anim.source = "new.qml"
    }
    Button {
        id:stop
        x: 255
        y: 256
        width: 40
        height: 25
        text: ""
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


    //}
    //}

    /*ColumnLayout {
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
        anchors.horizontalCenterOffset: 308
        antialiasing: false
        spacing: 10
        anchors.verticalCenterOffset: 17
        anchors.horizontalCenter: parent.horizontalCenter
    }*/








    Text {
        id: text3
        x: 196
        y: 225
        text: qsTr("200er block")
        font.pixelSize: 12
    }

    Text {
        id: text4
        x: 268
        y: 225
        width: 46
        height: 14
        text: qsTr(" Shear 1")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle7
        x: 263
        y: 0
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 90
        anchors.verticalCenterOffset: 27
        border.width: 0
    }


    Rectangle {
        id: rectangle8
        x: 268
        y: 0
        width: 9
        height: 9
        color: "#aaaa7f"
        radius: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 108
        anchors.verticalCenterOffset: 27
        border.width: 0
    }

    /*Text {
        id: text7
        x: 580
        y: 254
        text: qsTr(" 500er block")
        font.pixelSize: 12
    }

    Text {
        id: text8
        x: 793
        y: 254
        width: 69
        height: 14
        text: qsTr("FSFM Block")
        font.pixelSize: 12
    }*/

    /*Rectangle {
        id: rectangle7
        x: 0
        y: 6
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 446
        anchors.verticalCenterOffset: 26
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }

    Rectangle {
        id: rectangle8
        x: 9
        y: 6
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 474
        anchors.verticalCenterOffset: 26
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }

    Rectangle {
        id: rectangle9
        x: 3
        y: 14
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 488
        anchors.verticalCenterOffset: 26
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }

    Rectangle {
        id: rectangle10
        x: 9
        y: 3
        width: 8
        height: 8
        color: "#aaaa7f"
        radius: 4
        border.width: 0
        smooth: true
        enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 460
        anchors.verticalCenterOffset: 26
        anchors.horizontalCenter: parent.horizontalCenter
        transformOrigin: Item.Center
    }*/

    /*Text {
        id: text9
        x: 943
        y: 262
        width: 53
        height: 14
        text: qsTr("Cooling Bed")
        font.pixelSize: 12
    }

    Text {
        id: text10
        x: 906
        y: 241
        text: qsTr("Shear 3")
        font.pixelSize: 12
    }*/

}


