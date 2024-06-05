//
//  ReviewsView.swift
//  ReadWell
//
//  Created by Russell Gordon on 2024-06-05.
//

import SwiftUI

struct ReviewsView: View {
    
    // MARK: Stored properties
    @State private var isAddReviewShowing = false
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Button {
                isAddReviewShowing = true
            } label: {
                Text("Show sheet")
            }
        }
        .sheet(isPresented: $isAddReviewShowing) {
            AddReviewView(isShowing: $isAddReviewShowing)
        }

    }
}

#Preview {
    ReviewsView()
}
