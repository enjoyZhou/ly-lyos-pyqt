
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import Lyos_ui 1.0
import QtCharts 2.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#999999"
    gradient: Gradient {

        GradientStop {
            position: 0.0
            color: "#01161c"
        }
        GradientStop {
            position: 0.3
            color: "#050e36"
        }
        GradientStop {
            position: 0.8
            color: "#16032d"
        }
    }

    Rectangle {
        id: rectangle1
        x: 59
        y: 116
        width: 268
        height: 200
        color: "#c0010c11"
        radius: 6
        border.color: "#364045"
        border.width: 1

        Text {
            id: text2
            x: 39
            y: 45
            width: 191
            height: 75
            color: "#ffffff"
            text: qsTr("7.2")
            font.pixelSize: 60
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Rectangle {
            id: rectangle2
            x: 296
            y: 0
            width: 268
            height: 200
            color: "#c0010c11"
            radius: 6
            border.color: "#364045"
            border.width: 1
            Text {
                id: text3
                x: 39
                y: 45
                width: 191
                height: 75
                color: "#ffffff"
                text: qsTr("0.4")
                font.pixelSize: 60
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
        }

        Text {
            id: text4
            x: 350
            y: 133
            width: 160
            height: 38
            color: "#999999"
            text: "水压(mpa)"
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: rectangle3
            x: 592
            y: 0
            width: 268
            height: 200
            color: "#c0010c11"
            radius: 6
            border.color: "#364045"
            border.width: 1
            Text {
                id: text6
                x: 39
                y: 45
                width: 191
                height: 75
                color: "#ffffff"
                text: qsTr("95")
                font.pixelSize: 60
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
        }

        Text {
            id: text7
            x: 646
            y: 133
            width: 160
            height: 38
            color: "#999999"
            text: "氧浓度(%)"
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Text {
        id: text1
        x: 76
        y: 249
        width: 243
        height: 38
        color: "#747474"
        text: "当前溶氧(mg/L)"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignHCenter
    }

    ChartView {
        id: area
        x: 50
        y: 340
        width: 877
        height: 400
        backgroundColor: "#c0010c11"
        theme: ChartView.ChartThemeDark
        antialiasing: true

        ValueAxis {
            id: valueAxis
            min: 0
            max: 60
            tickCount: 30
            labelFormat: "%.0f"
        }

        AreaSeries {
            name: "溶氧曲线"
            color: "#83c7ea"
            borderColor: "#030000"
            axisX: valueAxis
            upperSeries: LineSeries {
                XYPoint {
                    x: 0
                    y: 0
                }

                XYPoint {
                    x: 1
                    y: 6.7
                }

                XYPoint {
                    x: 2
                    y: 7.6
                }

                XYPoint {
                    x: 3
                    y: 7
                }

                XYPoint {
                    x: 4
                    y: 7.2
                }
                XYPoint {
                    x: 5
                    y: 7
                }
                XYPoint {
                    x: 6
                    y: 6.6
                }
                XYPoint {
                    x: 7
                    y: 6.5
                }
                XYPoint {
                    x: 8
                    y: 7.3
                }
                XYPoint {
                    x: 9
                    y: 7.5
                }
                XYPoint {
                    x: 10
                    y: 7.8
                }
            }
        }
    }

    Text {
        id: text5
        x: 340
        y: 22
        width: 587
        height: 57
        color: "#81c4ed"
        text: "陆渔智能纳米增氧机 LY-A03"
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        font.bold: true
    }

    Rectangle {
        id: rectangle4
        x: 952
        y: 116
        width: 263
        height: 611
        color: "#c0010c11"
        radius: 6
        border.color: "#364045"
        border.width: 1

        BusyIndicator {
            id: busyIndicator
            x: 107
            y: 55
            width: 50
            height: 50
            scale: 1.3
        }

        Text {
            id: text8
            x: 45
            y: 165
            width: 167
            height: 29
            color: "#cfcfcf"
            text: qsTr("已启动...")
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: rectangle5
            x: 34
            y: 485
            width: 195
            height: 88
            color: "#ff0000"
            radius: 6

            Text {
                id: text9
                x: 61
                y: 20
                color: "#ffffff"
                text: qsTr("停止")
                font.pixelSize: 36
                font.family: "Arial"
                font.bold: true
            }
        }
    }

    Switch {
        id: switch1
        x: 1033
        y: 525
        text: "运行中"
        font.pointSize: 13
        scale: 2
    }

    Image {
        id: image
        x: 1164
        y: 43
        width: 64
        height: 42
        source: "../imgs/setting_icon.png"
        fillMode: Image.PreserveAspectFit
    }
}
