//
//  GenreView.swift
//  ChartsTutorial
//
//  Created by Russell Gordon on 2024-06-05.
//

import SwiftUI
import Charts

struct CountOfReviewsByGenre: Identifiable {
    let id = UUID()
    let genreName: String
    let reviewCount: Int
}

struct GenreView: View {
    
    // MARK: Computed properties
    var reviewsByGenre: [CountOfReviewsByGenre] {
        
        // Group all students by their house
        let reviewsGroupedByGenre = Dictionary(grouping: books, by: { book in
            book.genre.rawValue
        })
        
        // Create an empty array
        var reviewsByGenre: [CountOfReviewsByGenre] = []
        
        // Populate the array of students by house, iterating over the dictionary,
        // adding the total number of students
        for (genre, books) in reviewsGroupedByGenre {
            reviewsByGenre.append(
                CountOfReviewsByGenre(
                    genreName: genre,
                    reviewCount: books.count
                )
                
            )
        }
        
        return reviewsByGenre.sorted(by: { lhs, rhs in
            lhs.reviewCount > rhs.reviewCount
        })
        
    }
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    Text("Count of books reviewed")
                        .font(.title)
                    Spacer()
                }
                
                HStack {
                    Text("(by genre)")
                        .font(.subheadline)
                    Spacer()
                }
                
                Chart(reviewsByGenre) { genre in
                    BarMark(
                        x: .value("Genre", genre.genreName),
                        y: .value("Count", genre.reviewCount)
                    )
                    .foregroundStyle(by: .value("Books by genre", genre.genreName))
                    .annotation(position: .overlay) {
                        Text("\(genre.reviewCount)")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    
                }
                .chartLegend(.hidden)
            }
            .padding()
            .navigationTitle("Statistics")
            
        }
    }
}

#Preview {
    GenreView()
}
