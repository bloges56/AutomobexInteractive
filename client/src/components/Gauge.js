import React, { useContext, useState, useEffect }from "react"
import { UserSurveyContext } from "../providers/UserSurveyProvider"

export const Gauge = () => {

    const { engagement, getEngagement } = useContext(UserSurveyContext)

    useEffect(() => {
        getEngagement(1)
    }, [engagement])

    console.log(engagement)

    return (
        <>
        </>
    )
}