//
//  SettingsView.swift
//  Hike
//
//  Created by Eliezer Antonio on 10/10/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION HEADER

            Section {
                HStack {
                    Spacer()

                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))

                    ZStack {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))

                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }

                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))

                    Spacer()
                }.foregroundStyle(
                    LinearGradient(
                        colors:
                        [
                            .customGreenLight,
                            .customGreenMedium,
                            .colorGreenDark,
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                ).padding(.top, 8)

                VStack(spacing: 8) {
                    Text("whre can you find \n perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Text("The hike witch looks gorgeous in photos is even better once you area actually there the hike that you hope to do again someday. \nFind the best day ikes in the app")
                        .font(.footnote)
                        .italic()

                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)

                }.multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
            } // : Header
            .listRowSeparator(.hidden)

            // MARK: - SECTION: ICONS

            // MARK: - SEACTION ABOUT

            Section(header: Text("ABOUT THE APP "),
                    footer: HStack {
                        Spacer()
                        Text("Copyright @ All right reserved.")
                        Spacer()
                    }
                    .padding(.vertical, 8)
            ) {
                // 1 . Basic Labled content
//                LabeledContent("Application", value: "Hike")

                // 2 .Advaced labeled content
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent:  "HiKE",
                    rowTintColor: .blue
                )
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent:  "iOS",
                    rowTintColor: .red
                )
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent:  "HiKE",
                    rowTintColor: .orange
                )

                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent:  "1.0",
                    rowTintColor: .purple
                )
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent:  "Eliezer Antonio",
                    rowTintColor: .mint
                )
                CustomListRowView(
                    rowLabel: "Designer",
                    rowIcon: "paintpalette",
                    rowContent:  "Robert Petras",
                    rowTintColor: .pink
                )

                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo,
                    rowLinkLabel: "Credo Academy",
                    rowLinkDestination: "http://credo.academy"
                )
                
                
            }
        } //: List
    }
}

#Preview {
    SettingsView()
}
