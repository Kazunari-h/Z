//
//  TimelineCell.swift
//  Z
//
//  Created by Kazunari Hirosawa on 2024/06/25.
//

import SwiftUI

struct TimelineCell: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Circle()
                .frame(width: 44, height: 44)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("田中太郎")
                        .font(.system(size: 14))
                    
                    Text("@tanaka")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("10秒前")
                        .font(.system(size: 12))

                }
                
                
                Text("内容")
                    // .font(.system(size: 16))
                    .font(.system(size: 16, weight: .bold) )
                    .lineLimit(3)
                HStack {
                    HStack {
                        Image(systemName: "heart")
                        Text("50")
                            .font(.system(size: 14))
                        
                    }
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    
                    
                    Spacer()
                    HStack {
                        Image(systemName: "star")
                        Text("50")
                            .font(.system(size: 14))
                    }
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    
                    Spacer()
                    HStack {
                        Image(systemName: "book")
                        Text("50")
                            .font(.system(size: 14))
                    }
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    
                    Spacer()
                    HStack {
                        Image(systemName: "gear")
                        Text("50")
                            .font(.system(size: 14))
                    }
                    .foregroundColor(.gray)
                    .padding(.vertical, 10)
                    
                }
            }
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    TimelineCell()
}
