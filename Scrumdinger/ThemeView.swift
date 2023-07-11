//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by CEO on 3/26/23.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        if #available(iOS 16.0, *) {
            Text(theme.name)
                .padding(4)
                .frame(maxWidth: .infinity)
                .background(theme.mainColor)
                .foregroundColor(theme.accentColor)
                .clipShape(RoundedRectangle(cornerRadius: 4))
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(theme.mainColor)
                Label(theme.name, systemImage: "paintpalette")
                    .padding(4)
            }
            .foregroundColor(theme.accentColor)
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
