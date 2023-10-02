//
//  ModDetail.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import SwiftUI

struct ModDetail: View {
    var mod: Mod?
    var body: some View {
        HStack {
            if mod != nil {
                AsyncImage(url: URL(string: mod!.imageUrl)){ image in
                    image.image?.resizable()
                    
                }.frame(width: 100, height: 100).padding()
            }
            if mod != nil {
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Button {
                            print("configure mod")
                        } label: {
                            Text("Configure Mod")
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        Button {
                            print("Open folder")
                        } label: {
                            Text("Open Folder")
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                    Text(mod!.description).font(.body)
                    Spacer()
                    Text("Right click mod for options").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding()
            } else {
                VStack(alignment: .leading) {

                    Text("Select a Mod").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Right click mod for options").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).padding()
            }
            
        }
    }
}

#Preview {
    ModDetail(mod: Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: true, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!"))
}
