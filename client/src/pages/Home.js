import React from "react"
import { Container } from "reactstrap"
import { Gauge } from "../components/Gauge"
import './Home.css'
import image from "../components/339x187.png.png"

export const Home = () => {
    return (
        <Container>
            <Gauge />
            <title>Automobex Interactive</title>
            <h1>Automobex Interactive</h1>
            <img src = {image}/> 
             

        </Container>
    )
}