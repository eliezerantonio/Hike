//
//  CardView.swift
//  Hike
//
//  Created by Eliezer Antonio on 09/10/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - proprieties

    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false

    // MARK: Functions

    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1 ... 5)
        } while randomNumber == imageNumber

        imageNumber = randomNumber
    }

    var body: some View {
        // MARK: - CARD

        ZStack {
            CustomBackgroundView()

            VStack {
                // MARK: - Header

                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking").fontWeight(.black).font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [.customGrayLight, .customGrayMedium],
                                startPoint: .top, endPoint: .bottom
                            )
                            )
                        Spacer()
                        Button {
                            // ACTIOn show a sheet
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }.sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/ .leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }.padding(.horizontal, 30)

                // MARK: - MAIN CONTENT

                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }

                // MARK: Footer

                Button {
                    randomImage()
                }
                label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium,
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: /*@START_MENU_TOKEN@*/ .black/*@END_MENU_TOKEN@*/ .opacity(0.25), radius: 0.25, x: 1, y: 2)
                }.buttonStyle(GrdientButton())
            } // :ZSTACK
        } // :CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
