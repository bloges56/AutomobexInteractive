import React from "react";
import { Route, Redirect } from "react-router-dom";
import { ApplicationViews } from "./ApplicationViews";
import { BrowserRouter as Router } from "react-router-dom";
import { Login } from "./components/Login"

function App() {
  return (
    <Router>
      <Route render={() => {
            if (localStorage.getItem("user_id")) {
                return (
                    <>
                    <ApplicationViews />  
                    </>
                )
            } else {
                return <Redirect to="/login" />
            }
        }} />
      <Route path="/login">
        <Login />
      </Route>
    </Router>
  );
}

export default App;
