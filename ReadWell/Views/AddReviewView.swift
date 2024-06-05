//
//  AddReviewView.swift
//  ReadWell
//
//  Created by Russell Gordon on 2024-06-05.
//

import SwiftUI

struct AddReviewView: View {
    
    // MARK: Stored properties
    @Binding var isShowing: Bool
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var genre: String = ""
    @State private var dateStarted: Date = Date()
    @State private var dateFinished: Date = Date()
    @State private var starRating: Int = 0
    @State private var review: String = ""

    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Book Details")) {
                    TextField("Title", text: $title)
                    TextField("Author", text: $author)
                    Picker("Genre", selection: $genre) {
                        Text("Romance").tag("Romance")
                        Text("Science Fiction").tag("Science Fiction")
                    }
                }
                
                Section(header: Text("Reading Dates")) {
                    DatePicker("Date Started", selection: $dateStarted, displayedComponents: .date)
                    DatePicker("Date Finished", selection: $dateFinished, displayedComponents: .date)
                }
                
                Section(header: Text("Rating")) {
                    Picker("Star Rating", selection: $starRating) {
                        Text("★").tag(1)
                        Text("★★").tag(2)
                        Text("★★★").tag(3)
                        Text("★★★★").tag(4)
                        Text("★★★★★").tag(5)
                    }
                    .pickerStyle(.menu)
                }
                
                
                Section(header: Text("Review")) {
                    TextEditor(text: $review)
                        .frame(height: 200)
                }
            }            .navigationTitle("Add Review")
            .toolbar {
                ToolbarItem {
                    Button {
                        isShowing = false
                    } label: {
                        Text("Add")
                    }
                }
            }

        }
    }
}

#Preview {
    AddReviewView(isShowing: Binding.constant(true))
}
