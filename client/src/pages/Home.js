import React from "react"
import { Container } from "reactstrap"
import { Gauge } from "../components/Gauge"
import './Home.css'

export const Home = () => {
    return (
        <Container>
            <Gauge />
            <h1>Engagement</h1>
        </Container>
    )
}