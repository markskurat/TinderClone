//
//  CardImageScroller.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/20/22.
//

import SwiftUI
import Kingfisher

struct CardImageScroller: View {
    
    var person: Person
    
    @State private var imageIndex = 0
    
    @Binding var fullScreenMode: Bool
    
    func updateImageIndex(addition: Bool) {
        let newIndex: Int
        
        if addition {
            newIndex = imageIndex + 1
        } else {
            newIndex = imageIndex - 1
        }
        
        imageIndex = min(max(0, newIndex), person.imageURLS.count - 1)
    }
    
    let screenCutoff = (UIScreen.main.bounds.width / 2) * 0.4
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                KFImage(person.imageURLS[imageIndex])
                    .placeholder{
                        Color.white
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .clipped()
                
                VStack {
                    HStack {
                        Image("likeButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                            .opacity(Double(person.x / screenCutoff) - 1)

                        Spacer()
                        Image("nopeButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                            .opacity(Double(person.x / screenCutoff * -1) - 1)
                    }
                    
                    
                    Spacer()
                }
                
                HStack {
                    Rectangle()
                        .onTapGesture {
                            updateImageIndex(addition: false)
                        }
                    
                    Rectangle()
                        .onTapGesture {
                            updateImageIndex(addition: true)
                        }
                }
                .foregroundColor(.white.opacity(0.01))
            }
            
            VStack {
                HStack {
                    ForEach(0..<person.imageURLS.count) { imageIndex in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 4)
                            .foregroundColor(self.imageIndex == imageIndex ? Color.white : Color.gray.opacity(0.50))
                    }
                }
                .padding(.top, 6)
                .padding(.horizontal, fullScreenMode ? 0 : 12)
                
                Spacer()
                
                if !fullScreenMode {
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(person.name)
                                    .font(.system(size: 32))
                                    .fontWeight(.heavy)
                                
                                Text(String(person.age))
                                    .font(.system(size: 28, weight: .light))
                            }
                            Text(person.bio)
                                .font(.system(size: 18, weight: .medium))
                                .lineLimit(2)
                        }
                        Spacer()
                        
                        
                        Button {
                            fullScreenMode = true
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.system(size: 26, weight: .medium))
                                
                        }
                        .padding(16)

                    }
                    .foregroundColor(.white)
                }
            }
            .cornerRadius(6)
            .shadow(radius: 5)
        }
    }
}

struct CardImageScroller_Previews: PreviewProvider {
    static var previews: some View {
        CardImageScroller(person: Person.example, fullScreenMode: .constant(true))
    }
}
