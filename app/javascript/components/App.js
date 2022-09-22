import React from "react";
import { Routes, Route } from "react-router-dom";

import Books from "./books/Books";
import Book from "./book/Book";

const App = () => {
  return (
    // selective routes
    <Routes>
      <Route path="*" element={<Books />} />
      <Route path="/books/:slug" element={<Book />} />
    </Routes>
  );
};

export default App;
