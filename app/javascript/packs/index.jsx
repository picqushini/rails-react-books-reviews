// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";
import PropTypes from "prop-types";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import App from "../components/App";

// const Hello = (props) => <div>Hello {props.name}!</div>;

// Hello.defaultProps = {
//   name: "David",
// };

// Hello.propTypes = {
//   name: PropTypes.string,
// };

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Router>
      <Routes>
        {/* set up the indirect path for any route that will point to our app component,
        we'll establish all the exact routes inside our app components */}
        <Route path="*" element={<App />} />
      </Routes>
    </Router>,
    document.body.appendChild(document.createElement("div"))
  );
});
