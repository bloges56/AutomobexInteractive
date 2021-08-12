import React from "react";
import { Route } from "react-router-dom";
import { Home } from "./pages/Home";
import { UserSurveyProvider } from "./providers/UserSurveyProvider";
import { Login } from "./components/Login";

export const ApplicationViews = (props) => {
  return (
    <>
      <UserSurveyProvider>
        <Route exact path="/">
          <Home />
        </Route>
      </UserSurveyProvider>

      <Route path="/login">
        <Login />
      </Route>
    </>
  );
};
