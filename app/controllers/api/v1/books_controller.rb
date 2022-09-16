module Api
  module V1

    class BooksController < ApplicationController

      def index
        books = Book.all

        render json: BookSerializer.new(books, options).serialized_json
      end

      def show
        book = Book.find_by(slug: params[:slug])

        render json: BookSerializer.new(book, options).serialized_json
      end

      def create
        book = Book.new(book_params)

        if Book.save
          render json: BookSerializer.new(book).serialized_json
        else
          render json: {error: book.errors.messages}, status: 422
        end
      end

      def update
        book = Book.find_by(slug: params[:slug])

        if Book.update
          render json: BookSerializer.save(book, options).serialized_json
        else
          render json: {error: book.errors.messages}, status: 422
        end
      end

      def destroy
        book = Book.find_by(slug: params[:slug])

        if Book.destroy
          render :no_content
        else
          render json: {error: book.errors.messages}, status: 422
        end
      end

      private

      def book_params
        params.require(book).permit(:title, :image_url)
      end

      def options

        # turn into compund document
        # aka when we make a new instance of BookSeralizer we pass in an options hash and specify the additional resources
        # that we want to include with that
        @options || = {include: %i[reviews]}
      end

    end
  end
end
