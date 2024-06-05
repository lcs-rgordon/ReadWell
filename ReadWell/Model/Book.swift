//
//  Book.swift
//  ChartsTutorial
//
//  Created by Russell Gordon on 2024-06-05.
//

import Foundation

enum Genre: String {
    case scienceFiction = "Science Fiction"
    case romance = "Romance"
}

struct Book: Hashable {
    let title: String
    let author: String
    let genre: Genre
    let ratingOutOfFiveStars: Int
    let dateStarted: Date
    let dateFinished: Date
    let review: String
}

let books: [Book] = [
    Book(
        title: "Dune",
        author: "Frank Herbert",
        genre: .scienceFiction,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -500000),
        dateFinished: Date(timeIntervalSinceNow: -450000),
        review: "A masterpiece of science fiction."
    ),
    Book(
        title: "Dune Messiah",
        author: "Frank Herbert",
        genre: .scienceFiction,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -400000),
        dateFinished: Date(timeIntervalSinceNow: -350000),
        review: "A great sequel to Dune."
    ),
    Book(
        title: "Children of Dune",
        author: "Frank Herbert",
        genre: .scienceFiction,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -300000),
        dateFinished: Date(timeIntervalSinceNow: -250000),
        review: "Continues the epic saga."
    ),
    Book(
        title: "Outlander",
        author: "Diana Gabaldon",
        genre: .romance,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -200000),
        dateFinished: Date(timeIntervalSinceNow: -150000),
        review: "An enthralling mix of romance and history."
    ),
    Book(
        title: "Dragonfly in Amber",
        author: "Diana Gabaldon",
        genre: .romance,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -100000),
        dateFinished: Date(timeIntervalSinceNow: -90000),
        review: "A captivating sequel."
    ),
    Book(
        title: "Voyager",
        author: "Diana Gabaldon",
        genre: .romance,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -80000),
        dateFinished: Date(timeIntervalSinceNow: -70000),
        review: "Keeps you on the edge of your seat."
    ),
    Book(
        title: "Pride and Prejudice",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -60000),
        dateFinished: Date(timeIntervalSinceNow: -50000),
        review: "A timeless classic."
    ),
    Book(
        title: "Sense and Sensibility",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -40000),
        dateFinished: Date(timeIntervalSinceNow: -30000),
        review: "A wonderful exploration of societal norms."
    ),
    Book(
        title: "Emma",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -20000),
        dateFinished: Date(timeIntervalSinceNow: -10000),
        review: "A delightful and witty novel."
    ),
    Book(
        title: "Northanger Abbey",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -50000),
        dateFinished: Date(timeIntervalSinceNow: -45000),
        review: "A satire of gothic novels."
    ),
    Book(
        title: "Persuasion",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 5,
        dateStarted: Date(timeIntervalSinceNow: -35000),
        dateFinished: Date(timeIntervalSinceNow: -30000),
        review: "A deeply moving story of love and regret."
    ),
    Book(
        title: "Mansfield Park",
        author: "Jane Austen",
        genre: .romance,
        ratingOutOfFiveStars: 4,
        dateStarted: Date(timeIntervalSinceNow: -25000),
        dateFinished: Date(timeIntervalSinceNow: -20000),
        review: "A complex and nuanced novel."
    )
]
