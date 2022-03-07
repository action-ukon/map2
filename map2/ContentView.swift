//
//  ContentView.swift
//  map2
//
//  Created by 坪田和樹 on 2022/03/07.
//

import SwiftUI
import MapKit

struct ContentView: View {
    // managerの更新を観測する
    @ObservedObject var manager = LocationManager()
    // ユーザートラッキングモード（追従モード）
    @State var trackingMode = MapUserTrackingMode.follow

    var body: some View {
        // 現在地を追従する地図を表示する
        Map(coordinateRegion: $manager.region,
            showsUserLocation: true,
            userTrackingMode: $trackingMode)
            .edgesIgnoringSafeArea(.bottom)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
