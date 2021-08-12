import React, { useState, createContext } from "react";

export const UserSurveyContext = createContext();

export const UserSurveyProvider = (props) => {
  const [engagement, setEngagement] = useState(0.0);

  const getEngagement = (surveyId) => {
    return fetch(`https://localhost:5001/api/usersurvey/engagement/${surveyId}`, {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
          },
      })
        .then((resp) => resp.json())
        .then(setEngagement) 
  };

  return (
      <UserSurveyContext.Provider value ={{
          engagement,
          getEngagement
      }}>
          {props.children}
      </UserSurveyContext.Provider>
  )
};
