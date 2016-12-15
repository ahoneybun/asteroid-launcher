/*
 * Copyright (C) 2016 Florent Revest <revestflo@gmail.com>
 * All rights reserved.
 *
 * You may use this file under the terms of BSD license as follows:
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the author nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import QtQuick 2.1
import QtGraphicalEffects 1.0

Item {
    id: rootitem
    anchors.fill: parent

    function twoDigits(x) {
        if (x<10) return "0"+x;
        else      return x;
    }
    
    Image {
        source: "background.jpg"
        width: 160
        height: 160
    }

    Item {
        id: clock
        anchors.fill: parent
        Text {
            id: hour
            text: twoDigits(new Date().getHours())
            font.pixelSize: parent.height*0.45
            font.family: "Roboto"
            font.weight: Font.Medium
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -parent.width/8
            anchors.horizontalCenterOffset: -parent.width*0.15
            color: "white"
        }
        Text {
            id: minute
            text: twoDigits(new Date().getMinutes())
            font.pixelSize: parent.height*0.10
            font.family: "Roboto"
            font.weight: Font.Thin
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -parent.width/30
            anchors.horizontalCenterOffset: parent.width/5
            color: "white"
        }
        Text {
            id: date
            text: Qt.formatDate(new Date(), "dd MMM yyyy")
            font.pixelSize: parent.height/12.5
            font.family: "Roboto"
            font.weight: Font.Light
            anchors.centerIn: parent
            anchors.verticalCenterOffset: parent.width/2.5
            anchors.horizontalCenterOffset: -parent.width/6
            color: "white"
        }
    }
    DropShadow {
        anchors.fill: clock
        source: clock
        radius: 7.0
        samples: 15
    }
}
