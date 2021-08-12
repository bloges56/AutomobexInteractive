import React, {useState, useContext} from 'react'
import { UserSurveyContext } from '../providers/UserSurveyProvider'
import { Button } from 'reactstrap'

export const Survey = () => {
    const { updateUserSurvey } = useContext(UserSurveyContext);

    const confirmSurvey = () => {
        updateUserSurvey({
            id: 1,
            userId:1,
            surveyId: 1,
            IsCompleted: 1
        })
    }

    return (
        <Button className="surveyButton" onClick={confirmSurvey}> Take Survey</Button>
    )
}