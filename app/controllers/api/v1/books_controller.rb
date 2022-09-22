module Api
  module V1

    class BooksController < ApplicationController

      protect_from_forgery with: :null_session

      def index
        books = Book.all

        render json: BookSerializer.new(books, options)
      end

      def show
        book = Book.find_by(slug: params[:slug])

        render json: BookSerializer.new(book, options)
      end

      def create
        book = Book.new(book_params)

        if book.save
          render json: BookSerializer.new(book)
        else
          render json: {error: book.errors.messages}, status: 422
        end
      end

      def update
        book = Book.find_by(slug: params[:slug])

        if book.update(book_params)
          render json: BookSerializer.save(book, options)
        else
          render json: { error: book.errors.messages }, status: 422
        end
      end

      def destroy
        book = Book.find_by(slug: params[:slug])

        if book.destroy
          head :no_content
        else
          render json: { error: book.errors.messages }, status: 422
        end
      end

      private

      def book_params
        params.require(:book).permit(:title, :image_url)
      end

      def options
        # turn into compund document
        # aka when we make a new instance of BookSeralizer we pass in an options hash and specify the additional resources
        # that we want to include with that
        @options ||= { include: %i[reviews] }
      end
    end
  end
end
