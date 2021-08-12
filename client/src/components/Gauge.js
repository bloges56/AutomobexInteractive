import React, { useContext, useState, useEffect }from "react"
import { UserSurveyContext } from "../providers/UserSurveyProvider"
import GaugeChart from 'react-gauge-chart'

export const Gauge = () => {

    const { engagement, getEngagement } = useContext(UserSurveyContext)

    useEffect(() => {
        getEngagement(1)
    }, [engagement])

    console.log(engagement)

    return (
            <GaugeChart
            nrOfLevels={30}
            percent={engagement}
            colors={["#F54242","#ffff00","#00ff00"]}
            />    
    )
}