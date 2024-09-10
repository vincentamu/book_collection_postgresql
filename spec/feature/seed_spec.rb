# spec/tasks/seed_spec.rb

require 'rails_helper'

RSpec.describe 'Database seeding', type: :task do
  before do
    # Clear the database before running seeds to ensure a clean state
    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{t} CASCADE")
    end

    # Run the seed task
    Rails.application.load_seed
  end

  it 'creates books with the correct attributes' do
    # Fetch the books from the database
    books = Book.all

    # Check if there are books in the database
    expect(books.count).to be > 0

    # Check if the attributes are correct
    book = books.first
    expect(book.title).to eq('To Kill a Mockingbird')
    expect(book.author).to eq('Harper Lee')
    expect(book.price).to eq(10.99) # adjust to the price you seeded
    expect(book.published_date).to eq(Date.new(1960, 7, 11)) # adjust to the date you seeded
  end
end
