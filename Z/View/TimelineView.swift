//
//  TimelineView.swift
//  Z
//
//  Created by Kazunari Hirosawa on 2024/06/18.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {

        List {
            
            TimelineCell()
            TimelineCell()
            TimelineCell()

                
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    TimelineView()
}
