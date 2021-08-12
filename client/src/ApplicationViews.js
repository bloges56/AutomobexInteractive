import React from "react";
import { Route } from "react-router-dom";
import { Home } from "./pages/Home";
import { UserSurveyProvider } from "./providers/UserSurveyProvider";

export const ApplicationViews = (props) => {
  return (
    <>
      <UserSurveyProvider>
        <Route exact path="/">
          <Home />
        </Route>
      </UserSurveyProvider>
    </>
  );
};
