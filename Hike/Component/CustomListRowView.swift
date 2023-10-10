//
//  CustomListRowView.swift
//  Hike
//
//  Created by Eliezer Antonio on 10/10/23.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - PROPRIETIES
    
    @State var rowLabel           : String
    @State var rowIcon            : String
    @State var rowContent         : String? = nil
    @State var rowTintColor       : Color
    @State var rowLinkLabel       : String? = nil
    @State var rowLinkDestination : String? = nil
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!).foregroundColor(.pink).fontWeight(.heavy)
                
            }
            
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width:30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowLabel: "Wensite",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Credo Academy",
            rowLinkDestination: "http://credo.academys"
        )
    }
}
